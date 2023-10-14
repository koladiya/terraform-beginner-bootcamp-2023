output "bucket_name" {
  description = "S3 static website bucket name" 
  value = aws_s3_bucket.website_bucket.bucket
}

output "website_endpoint" {
  description = "S3 static website hosting endpoint"
  value = aws_s3_bucket_website_configuration.website_configuration.website_endpoint
}

output "cloudfront_url" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}