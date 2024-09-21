variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "The availability zones for the public subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "igw_name" {
  description = "The name tag for the Internet Gateway"
  type        = string
  default     = "kanban-igw"
}

variable "route_table_name" {
  description = "The name tag for the public route table"
  type        = string
  default     = "kanban-public-rt"
}

variable "security_group_name" {
  description = "The name tag for the security group"
  type        = string
  default     = "kanban-ecs-sg"
}
