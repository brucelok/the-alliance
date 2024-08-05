terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }
  required_version = "~> 1.2"
}

provider "aws" {
  region = var.region
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.*-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["137112412989"] # Amazon
}

resource "aws_instance" "amazon_linux" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  count         = var.instance_count
  tags = {
    Name = var.instance_name
  }
}