
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}


provider "aws" {
  # Configuration options
  # region     = "eu-central-1"
  # access_key = "XXXXXXXXXXXXXXXXXXXXXXXXX"
  # secret_key = "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
}

provider "random" {
  # Configuration options
}


resource "random_string" "bucket_name" {
  length           = 32
  upper            = false
  lower            = true
  special          = false
  override_special = ""
}

output "random_bucket_name" {
    value = random_string.bucket_name.result
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



