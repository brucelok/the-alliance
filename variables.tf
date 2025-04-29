variable "region" {
  description = "AWS region"
  default     = "ap-southeast-2"
}

variable "instance_ami" {
  default = "ami-0f5d1713c9af4fe30"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default = 5
}

variable "key_name" {
  default = "myMacbook"
}

variable "security_group_id" {
  default = "sg-05583691e895a6b4e"
}

variable "subnet_id" {
  default = "subnet-0f72be4624adad8ff"
}