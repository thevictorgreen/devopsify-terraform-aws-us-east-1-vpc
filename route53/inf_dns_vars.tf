variable "region" {
  type = "map"
  default = {
    "N_Virginia" = "us-east-1"
    "Ohio" = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon" = "us-west-2"
  }
}

variable "vpc_id" {
  description = "vpc_id"
  type = "string"
  default = "BBBBB"
}

variable "dns_private_zone_name" {
  description = "private zone"
  type = "string"
  default = "DDDDD"
}

variable "dns_reverse_zone_name" {
  description = "reverse zone"
  type = "string"
  default = "EEEEE"
}
