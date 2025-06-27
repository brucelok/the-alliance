terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "my_vms" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  count                       = var.instance_count
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = "vm${count.index + 1}"
  }
}

resource "local_file" "public_ips_file" {
  content  = "[all]\n${join("\n", aws_instance.my_vms[*].public_dns)}"
  filename = "${path.module}/inventory.txt"
}
