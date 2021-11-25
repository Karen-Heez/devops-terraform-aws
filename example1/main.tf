terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.66.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Example1-Demo"
  }
}
resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Example1-Demo"
  }
}

resource "aws_instance" "instance1" {
  ami           = "ami-0074ef78ecb07948c"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet_1.id

  tags = {
    Name = "Example1-Demo"
  }
}
