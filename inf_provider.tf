provider "aws" {
  version = "~> 2.27"
  region = "${var.region["N_Virginia"]}"
}
