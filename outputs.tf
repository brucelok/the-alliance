output "public_ips" {
  value = aws_instance.my_vms[*].public_dns
}