
resource "aws_route53_zone" "dns_private_zone" {
    name     = "${var.dns_private_zone_name}"
    vpc {
      vpc_id = "${var.vpc_id}"
    }
}

resource "aws_route53_zone" "dns_reverse_zone" {
    name     = "${var.dns_reverse_zone_name}"
    vpc {
      vpc_id = "${var.vpc_id}"
    }
}
