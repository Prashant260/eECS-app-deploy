terraform {
  backend "s3" {
    bucket         = "two-tier-app-tf-state-prashant-001"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "two-tier-app-tf-lock"
  }
}