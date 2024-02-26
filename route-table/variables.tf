variable "route_table_name" {
  description = "Name for the route table"
  type        = string
  default     = "ecs-route-table"
}

variable "cidr_block_value" {
  description = "CIDR block for the default route"
  type        = string
  default     = "0.0.0.0/0"
}
variable "subnet__id" {
  description = "subnet"
  type        = string
}
variable "vpc__id" {
  description = "Vpc"
  type        = string
}
variable "igw__id" {
  description = "igw"
  type        = string
}
