terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "westproject"
    key    = "state_west"
    region = "us-west-2"
  }
}


# Configure the AWS Provider_2
provider "aws" {
  region = "us-west-2"
  shared_credentials_files  = [ "~/.aws/config" ]
}


