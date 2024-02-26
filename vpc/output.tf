output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.ecs_vpc.id
}

