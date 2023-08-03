provider "aws" {
  region = local.region

  # Make it faster by skipping something
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}

locals {
  region = "us-west-1"
}

module "s3_bucket" {
  source = "../../"
  bucket        = "anna-test-bucket"
  force_destroy = true
}


