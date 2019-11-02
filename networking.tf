variable "region" {
  type = "map"
  default = {
    "N_Virginia" = "us-east-1"
    "Ohio" = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon" = "us-west-2"
  }
}

data "aws_route53_zone" "dns_private_zone" {
  name         = "AAAAA"
  private_zone = true
}

data "aws_route53_zone" "dns_reverse_zone" {
  name         = "10.10.in-addr.arpa."
  private_zone = true
}

data "aws_route53_zone" "skyfall_public_zone" {
  name         = "BBBBB"
  private_zone = false
}

variable "subnets" {
  type = "map"
  default = {
    "management001useast1-public-us-east-1a-sn"  = "CCCCC"
    "management001useast1-public-us-east-1b-sn"  = "DDDDD"
    "management001useast1-public-us-east-1c-sn"  = "EEEEE"
    "management001useast1-public-us-east-1d-sn"  = "FFFFF"
    "management001useast1-public-us-east-1e-sn"  = "GGGGG"
    "management001useast1-public-us-east-1f-sn"  = "HHHHH"
    "management001useast1-private-us-east-1a-sn" = "IIIII"
    "management001useast1-private-us-east-1b-sn" = "JJJJJ"
    "management001useast1-private-us-east-1c-sn" = "KKKKK"
    "management001useast1-private-us-east-1d-sn" = "LLLLL"
    "management001useast1-private-us-east-1e-sn" = "MMMMM"
    "management001useast1-private-us-east-1f-sn" = "NNNNN"
  }
}

variable "secgroups" {
  type = "map"
  default = {
    "management001useast1-bastion-security-group" = "OOOOO"
    "management001useast1-public-security-group"  = "PPPPP"
    "management001useast1-private-security-group" = "QQQQQ"
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
    "kp_1" = "RRRRR"
  }
}

variable "public_key" {
  default = "z/RRRRR.pub"
}

variable "private_key" {
  default = "z/RRRRR.pem"
}

variable "ansible_user" {
  type = "map"
  default = {
    "ubuntu_18_04" = "ubuntu"
    "centos_7"  = "centos"
  }
}
