provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket         = "test-buck98"       # Example: my-tfstate-bucket
    key            = "infra/terraform.tfstate"     # Path inside the bucket
    region         = "ap-south-1"                # Example: ap-south-1
    dynamodb_table = "terraformlock"  # Example: tf-lock-table
       encrypt        = true
  }
}

