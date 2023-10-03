terraform {
  cloud {
    organization = "kk-test1"
    workspaces {
      name = "terra-house-1"
    }
  }
}


module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
  index_html_filepath = "${path.root}/public/index.html"
  error_html_filepath = "${path.root}/public/error.html"
}