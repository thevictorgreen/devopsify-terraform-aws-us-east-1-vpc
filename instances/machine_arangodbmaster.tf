# arangodbmaster VARIABLES
variable "arangodbmaster_machine_names" {
  description = "Host names for arangodbmaster machines"
  type = list(string)
  default = ["arangodbmaster000"]
}

variable "arangodbmaster_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "arangodbmaster000" = "AAAAA001useast1-private-us-east-1a-sn"
  }
}

variable "arangodbmaster_machine_ansible_group" {
  default = "arangodbmaster"
}

# arangodbmaster MACHINE
resource "aws_instance" "arangodbmaster-machine" {
  for_each      = "${toset(var.arangodbmaster_machine_names)}"
  ami           = "${var.amis["ubuntu_18_04"]}"
  instance_type = "${var.instance_type["micro"]}"

  key_name      = "${var.keypairs["kp_1"]}"
  subnet_id     = "${var.subnets[ var.arangodbmaster_machine_subnets[ each.value ] ]}"

  vpc_security_group_ids = [
    "${var.secgroups["AAAAA001useast1-private-security-group"]}"
  ]

  root_block_device {
    volume_type = "standard"
    volume_size = 8
  }

  connection {
    private_key = "${file(var.private_key)}"
    user        = "${var.ansible_user["ubuntu_18_04"]}"
    host        = "${self.private_ip}"
  }

  provisioner "file" {
    source = "scripts/AAAAA_prompt.sh"
    destination = "/tmp/custom_prompt.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo waiting-for-boot-finished; sleep 5; done;",
      "while [ ! -z \"$(sudo lsof /var/lib/dpkg/lock-frontend)\" ]; do echo cloud-init-configuring-system; sleep 5; done;",
      "sudo hostnamectl set-hostname ${each.value}.AAAAA.${var.domain}",
      "sudo mv /tmp/custom_prompt.sh /etc/profile.d/custom_prompt.sh",
      "sudo chmod +x /etc/profile.d/custom_prompt.sh"
    ]
  }

  tags = {
    Name = "${each.value}"
    region = "us-east-1"
    env = "AAAAA"
    AnsibleRole = "arangodbmaster"
    ClusterRole = "none"
  }
}


resource "aws_route53_record" "arangodbmaster-machine-private-record" {
  for_each = "${toset(var.arangodbmaster_machine_names)}"
  zone_id  = "${data.aws_route53_zone.dns_private_zone.zone_id}"
  name     = "${each.value}.${data.aws_route53_zone.dns_private_zone.name}"
  type     = "A"
  ttl      = "300"
  records  = ["${aws_instance.arangodbmaster-machine[each.value].private_ip}"]
}


resource "aws_route53_record" "arangodbmaster-machine-reverse-record" {
  for_each = "${toset(var.arangodbmaster_machine_names)}"
  zone_id = "${data.aws_route53_zone.dns_reverse_zone.zone_id}"
  name    = "${element(split(".", aws_instance.arangodbmaster-machine[each.value].private_ip),3)}.${element(split(".", aws_instance.arangodbmaster-machine[each.value].private_ip),2)}.${data.aws_route53_zone.dns_reverse_zone.name}"
  records = ["${each.value}.${data.aws_route53_zone.dns_private_zone.name}"]
  type    = "PTR"
  ttl     = "300"
}

/*
resource "aws_eip" "arangodbmaster-machine-eip" {
  for_each = "${toset(var.arangodbmaster_machine_names)}"
  instance = "${aws_instance.arangodbmaster-machine[each.value].id}"
  vpc      = true
}


resource "aws_route53_record" "arangodbmaster-machine-public-record" {
  for_each = "${toset(var.arangodbmaster_machine_names)}"
  zone_id  = "${data.aws_route53_zone.dns_public_zone.zone_id}"
  name     = "${each.value}.AAAAA.${data.aws_route53_zone.dns_public_zone.name}"
  type     = "A"
  ttl      = "300"
  records  = ["${aws_eip.arangodbmaster-machine-eip[each.value].public_ip}"]
}
*/
