
resource "aws_s3_bucket" "s3_private_bucket" {
    bucket = "${var.bucket_name}"
    acl = "private"
    tags = {
      Name = "${var.bucket_name}"
    }
}
