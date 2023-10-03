output "bucket_name" {
  description = "Bucket name for our static website hosting"
  value = module.terrahouse_aws.bucket_name
}

output "s3_url" {
  value = module.terrahouse_aws.website_endpoint
}