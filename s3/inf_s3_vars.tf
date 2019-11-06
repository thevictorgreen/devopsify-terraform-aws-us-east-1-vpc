variable "region" {
  type = "map"
  default = {
    "N_Virginia" = "us-east-1"
    "Ohio" = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon" = "us-west-2"
  }
}

variable "bucket_name" {
  description = "bucket name"
  type = "string"
  default = "AAAAA"
}
