resource "random_string" "bucket_name" {
  length           = 32
  upper            = false
  lower            = true
  special          = false
  override_special = ""
}


resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result

  tags = {
    UserUuid    = var.user_uuid
  }
}



