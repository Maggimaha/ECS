resource "aws_internet_gateway" "ecs_igw" {
  vpc_id = var.vpc__id

  tags = {
    Name = var.igw_name
  }
}