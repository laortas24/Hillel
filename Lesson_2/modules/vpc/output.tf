output "aws_vpc_id" {
  value = aws_vpc.this.id
}
output "public_networks" {
  value = aws_subnet.public_sn[*].id
}
output "private_networks" {
  value = aws_subnet.private[*].id
}