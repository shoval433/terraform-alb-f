terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
   backend "s3" {
    bucket = "shoval-tf-state-443"
    key    = "terraform.tfstate"
    region = "eu-west-3"
  }
}
# Configure the AWS Provider
provider "aws" {
  region = var.region
}