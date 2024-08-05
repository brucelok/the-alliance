output "instance_ami" {
  value = data.aws_ami.amazon_linux.id
}

output "instance_ids" {
  value = [for instance in aws_instance.amazon_linux : instance.id]
}

output "instance_public_ips" {
  value = [for instance in aws_instance.amazon_linux : instance.public_ip]
}