

terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  # cloud {
  #   organization = "kk-test1"
  #   workspaces {
  #     name = "terra-house-1"
  #   }
  # }
}

provider "terratowns" {
  # endpoint = "http://localhost:4567/api"
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}


module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.teacherseat_user_uuid
  # bucket_name = var.bucket_name
  index_html_filepath = var.index_html_filepath # "${path.root}/public/index.html"
  error_html_filepath = var.error_html_filepath # "${path.root}/public/error.html"
  assets_path = var.assets_path
  content_version = var.content_version
}


resource "terratowns_home" "home" {
  name = "How to make Dabeli?"
  description = <<DESCRIPTION
Dabeli is a very popular snack from the Gujarati cuisine and originated from the Kutch or Kachchh region of Gujarat state in India. This dish is also commonly known as Kutchi Dabeli or Kachchhi Dabeli.
Dabeli is a fantastic spicy snack made by mixing boiled potatoes with a special Dabeli Masala and putting the mixture between the Ladi pav (burger bun) and served with delicious chutneys made from tamarind, date, garlic, red chillies etc and garnished with pomegranate and roasted pea-nuts.
DESCRIPTION
  #domain_name = module.terrahouse_aws.cloudfront_url
  domain_name =  module.terrahouse_aws.cloudfront_url
  town = "cooker-cove"
  content_version = 1
}