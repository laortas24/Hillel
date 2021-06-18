output "instance_id" {
  value = aws_instance.this.id
}

output "instance_ip" {
  value = var.eip_attach == true ? aws_eip.this[0].public_ip : aws_instance.this.public_ip
}