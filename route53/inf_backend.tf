terraform {
  backend "s3" {
    bucket = "AAAAA"
    key    = "BBBBB"
    region = "us-east-1"
  }
}
