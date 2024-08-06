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

resource "random_pet" "name" {
  count = var.instance_count
}

resource "aws_instance" "amazon_linux" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  count         = var.instance_count
  key_name      = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = random_pet.name[count.index].id
  }
}