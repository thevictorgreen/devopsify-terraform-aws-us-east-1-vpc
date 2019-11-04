variable "sample_machine_names" {
  description = "Host names for sample machines"
  type = list(string)
  default = ["machine000"]
}

variable "sample_machine_subnets" {
  description = "Subnet where each host is to be provisioned"
  type = "map"
  default = {
    "machine000" = "AAAAAuseast1-public-us-east-1a-sn"
  }
}

variable "sample_machine_ansible_group" {
  default = "sample"
}
