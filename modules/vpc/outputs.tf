output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_ids" {
  value = element(aws_subnet.public_subnets[*].id, 0)
}

output "private_subnet_ids" {
  value = element(aws_subnet.private_subnets[*].id, 0)
}