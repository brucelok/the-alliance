variable "region" {
  description = "AWS region"
  default     = "ap-southeast-2"
}

variable "instance_ami" {
  description = "Default is Amazon Linux 2023"
  default     = "ami-09f5ddaab17f5ff43"
}

variable "instance_type" {
  description = "EC2 Type"
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Number of instances"
  default     = 1
}

variable "key_name" {
  description = "Name of the key pair to use"
  default     = "myMacbook"
}

variable "security_group_id" {
  description = "ID of the security group"
  default     = "sg-05583691e895a6b4e"
}