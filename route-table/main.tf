resource "aws_route_table" "ecs_route_table" {
  vpc_id = var.vpc__id

  route {
    cidr_block = var.cidr_block_value
    gateway_id = var.igw__id
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "ecs_route_table_association" {
  subnet_id      = var.subnet__id
  route_table_id = aws_route_table.ecs_route_table.id
}