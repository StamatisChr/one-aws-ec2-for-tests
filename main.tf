terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "tfe_instance" {
  ami             = "ami-03cc8375791cb8bcf"
  instance_type   = "t3.micro"

  tags = {
    Name = "stam-test"
  }

}