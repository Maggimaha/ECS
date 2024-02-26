resource "aws_subnet" "ecs_subnet" {
  vpc_id                  = var.vpc__id
  cidr_block              = var.subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_name
  }
}