terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "eastproject"
    key    = "state_east"
    region = "us-east-1"
  }
}

# Configure the AWS Provider_1
provider "aws" {
  region = "us-east-1"
  shared_credentials_files  = [ "~/.aws/config" ]
}


