variable "project_name" {
  default = "karen-demo"
}

variable "region" {
  default = "us-west-1"
}

variable "environment" {
  default = "dev"
}

variable "cidr" {
  default = "192.168.0.0/19"
}

variable "availability_zones" {
  default = ["us-west-1a", "us-west-1b"]
}

variable "public_subnets" {
  default = ["192.168.0.0/22"]
  # type = list(string)
}

variable "private_subnets" {
  default = ["192.168.8.0/22", "192.168.12.0/22"]
}

variable "ami" {
  default = "ami-0d5075a2643fdf738"
}