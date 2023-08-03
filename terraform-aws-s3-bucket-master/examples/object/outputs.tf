# S3 object
output "custom" {
  value = "I am in the dev branch"
}


# S3 bucket
output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = module.s3_bucket.s3_bucket_id
}

output "s3_bucket_attr" {
  description = "Attributes of the bucket."
  value       = module.s3_bucket
}
