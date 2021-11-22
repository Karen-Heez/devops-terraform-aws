terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

resource "aws_instance" "instance1" {
  ami           = "ami-0074ef78ecb07948c"
  instance_type = "t2.micro"

  tags = {
    Name = "Example-Demo"
  }
}
