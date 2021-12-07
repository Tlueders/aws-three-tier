terraform {
  backend "s3" {
    bucket = "tf-backend"
    key    = "path/to/my/key" // Required for init
    region = "us-east-1" // Required for init, can't use variable here. Update based on region.
  }

   required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
}