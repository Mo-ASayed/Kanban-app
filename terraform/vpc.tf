resource "aws_vpc" "kanban_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "kanban-vpc"
  }
}

resource "aws_subnet" "kanban_public_subnet_1" {
  vpc_id                  = aws_vpc.kanban_vpc.id
  cidr_block              = var.public_subnet_cidrs[0]
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = true
  tags = {
    Name = "kanban-public-subnet-1"
  }
}

resource "aws_subnet" "kanban_public_subnet_2" {
  vpc_id                  = aws_vpc.kanban_vpc.id
  cidr_block              = var.public_subnet_cidrs[1]
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = true
  tags = {
    Name = "kanban-public-subnet-2"
  }
}

resource "aws_internet_gateway" "kanban_igw" {
  vpc_id = aws_vpc.kanban_vpc.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "kanban_public_rt" {
  vpc_id = aws_vpc.kanban_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.kanban_igw.id
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "kanban_subnet1_rt_assoc" {
  subnet_id      = aws_subnet.kanban_public_subnet_1.id
  route_table_id = aws_route_table.kanban_public_rt.id
}

resource "aws_route_table_association" "kanban_subnet2_rt_assoc" {
  subnet_id      = aws_subnet.kanban_public_subnet_2.id
  route_table_id = aws_route_table.kanban_public_rt.id
}

resource "aws_security_group" "kanban_eks_sg" {
  name   = var.security_group_name
  vpc_id = aws_vpc.kanban_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_group_name
  }
}
