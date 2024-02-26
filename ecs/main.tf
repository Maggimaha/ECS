resource "aws_ecs_cluster" "maggi" {
  name = var.ecs_name

}
resource "aws_ecs_task_definition" "service" {
  family = "meghana"
  container_definitions = jsonencode([
    {
      name      = "meghana_container"
      image     = "nginx"
      cpu       = 1024
      memory    = 3072
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
      networkMode="awsvpc"
    }
  ])
  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu = "1024"
  memory="3072"
}
resource "aws_ecs_service" "maha" {
  name            = "maha"
  cluster         = aws_ecs_cluster.maggi.id
  task_definition = aws_ecs_task_definition.service.arn
  launch_type = "FARGATE"
  scheduling_strategy = "REPLICA"
  desired_count   = 1
 network_configuration {
    security_groups  = [var.sg_id]
    subnets          = [var.subnet-id]
    assign_public_ip = true
  }
 }
