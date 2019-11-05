/*
# REMOVE MULTILINE COMMENT BLOCK TO PROVISION THESE RESOURCES
resource "aws_instance" "zookeeper-machine" {
  for_each      = "${toset(var.zookeeper_machine_names)}"
  ami           = "${var.amis["ubuntu_18_04"]}"
  instance_type = "${var.instance_type["micro"]}"

  key_name      = "${var.keypairs["kp_1"]}"
  subnet_id     = "${var.subnets[ var.zookeeper_machine_subnets[ each.value ] ]}"

  vpc_security_group_ids = [
    "${var.secgroups["AAAAA001useast1-bastion-security-group"]}"
  ]

  connection {
    private_key = "${file(var.private_key)}"
    user        = "${var.ansible_user["ubuntu_18_04"]}"
    host        = "${aws_instance.zookeeper-machine[each.value].public_ip}"
  }

  provisioner "remote-exec" {
    inline = [
      "while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo waiting-for-boot-finished; sleep 5; done;",
      "while [ ! -z \"$(lsof /var/lib/dpkg/lock-frontend)\" ]; do echo cloud-init-configuring-system; sleep 5; done;",
      "sudo hostnamectl set-hostname ${each.value}.${var.domain}"
    ]
  }

  tags = {
    Name = "${each.value}"
    region = "us-east-1"
    env = "AAAAA"
    AnsibleRole = "zookeeper"
    ClusterRole = "none"
  }
}


resource "aws_route53_record" "zookeeper-machine-private-record" {
  for_each = "${toset(var.zookeeper_machine_names)}"
  zone_id  = "${data.aws_route53_zone.dns_private_zone.zone_id}"
  name     = "${each.value}.${data.aws_route53_zone.dns_private_zone.name}"
  type     = "A"
  ttl      = "300"
  records  = ["${aws_instance.zookeeper-machine[each.value].private_ip}"]
}


resource "aws_route53_record" "zookeeper-machine-reverse-record" {
  for_each = "${toset(var.zookeeper_machine_names)}"
  zone_id = "${data.aws_route53_zone.dns_reverse_zone.zone_id}"
  name    = "${element(split(".", aws_instance.zookeeper-machine[each.value].private_ip),3)}.${element(split(".", aws_instance.zookeeper-machine[each.value].private_ip),2)}.${data.aws_route53_zone.dns_reverse_zone.name}"
  records = ["${each.value}.${data.aws_route53_zone.dns_private_zone.name}"]
  type    = "PTR"
  ttl     = "300"
}


resource "aws_eip" "zookeeper-machine-eip" {
  for_each = "${toset(var.zookeeper_machine_names)}"
  instance = "${aws_instance.zookeeper-machine[each.value].id}"
  vpc      = true
}


resource "aws_route53_record" "zookeeper-machine-public-record" {
  for_each = "${toset(var.zookeeper_machine_names)}"
  zone_id  = "${data.aws_route53_zone.dns_public_zone.zone_id}"
  name     = "${each.value}.${data.aws_route53_zone.dns_public_zone.name}"
  type     = "A"
  ttl      = "300"
  records  = ["${aws_eip.zookeeper-machine-eip[each.value].public_ip}"]
}
*/
