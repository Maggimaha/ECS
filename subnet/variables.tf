variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-west-2a"
}
variable "subnet_name" {
  description = "Name for the subnet"
  type        = string
  default     = "Demo-Name"
}
variable "vpc__id" {
  description = "vpc"
  type        = string
}
