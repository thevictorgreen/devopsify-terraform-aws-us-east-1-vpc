variable "region" {
  type = "map"
  default = {
    "N_Virginia" = "us-east-1"
    "Ohio" = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon" = "us-west-2"
  }
}

variable "domain" {
  description = "Primary domain for this resource"
  type = "string"
  default = "BBBBB"
}

data "aws_route53_zone" "dns_private_zone" {
  name         = "CCCCC"
  private_zone = true
}

data "aws_route53_zone" "dns_reverse_zone" {
  name         = "DDDDD"
  private_zone = true
}

data "aws_route53_zone" "dns_public_zone" {
  name         = "EEEEE"
  private_zone = false
}

variable "subnets" {
  type = "map"
  default = {
    "AAAAA001useast1-public-us-east-1a-sn"  = "FFFFF"
    "AAAAA001useast1-public-us-east-1b-sn"  = "GGGGG"
    "AAAAA001useast1-public-us-east-1c-sn"  = "HHHHH"
    "AAAAA001useast1-public-us-east-1d-sn"  = "IIIII"
    "AAAAA001useast1-public-us-east-1e-sn"  = "JJJJJ"
    "AAAAA001useast1-public-us-east-1f-sn"  = "KKKKK"
    "AAAAA001useast1-private-us-east-1a-sn" = "LLLLL"
    "AAAAA001useast1-private-us-east-1b-sn" = "MMMMM"
    "AAAAA001useast1-private-us-east-1c-sn" = "NNNNN"
    "AAAAA001useast1-private-us-east-1d-sn" = "OOOOO"
    "AAAAA001useast1-private-us-east-1e-sn" = "PPPPP"
    "AAAAA001useast1-private-us-east-1f-sn" = "QQQQQ"
  }
}

variable "secgroups" {
  type = "map"
  default = {
    "AAAAA001useast1-bastion-security-group" = "RRRRR"
    "AAAAA001useast1-public-security-group"  = "SSSSS"
    "AAAAA001useast1-private-security-group" = "TTTTT"
  }
}

variable "amis" {
  type = "map"
  default = {
    "ubuntu_18_04" = "ami-064a0193585662d74"
    "centos_7"  = "ami-02eac2c0129f6376b"
  }
}

variable "instance_type" {
  type = "map"
  default = {
    "nano"    = "t2.nano"
    "micro"   = "t2.micro"
    "small"   = "t2.small"
    "medium"  = "t2.medium"
    "large"   = "t2.large"
    "xlarge"  = "t2.xlarge"
    "2xlarge" = "t2.2xlarge"
  }
}

variable "keypairs" {
  type = "map"
  default = {
    "kp_1" = "UUUUU"
  }
}

variable "public_key" {
  default = "z/UUUUU.pub"
}

variable "private_key" {
  default = "z/UUUUU.pem"
}

variable "ansible_user" {
  type = "map"
  default = {
    "ubuntu_18_04" = "ubuntu"
    "centos_7"  = "centos"
  }
}
