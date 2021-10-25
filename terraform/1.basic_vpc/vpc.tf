terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 3.0"
		}
	}
}

# Configure the AWS Provider
provider "aws" {
	region = "us-east-1"
	shared_credentials_file = "~/.aws/credentials"
	profile = "default"
}

# Create a VPC
resource "aws_vpc" "main" {
	cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}
