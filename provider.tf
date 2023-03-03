terraform {
  required_providers {
   aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }


  backend "s3" {
    bucket = "salma-bucket"
    key    = "tfstate_file"
    region = "eu-central-1"
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}
