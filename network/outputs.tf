output "vpc_id" {
  value = aws_vpc.website
}
output "security_group" {
  value=aws_security_group.public
}
output "public_subnets" {
  value=aws_subnet.public[*].id
}

