# modules/vpc/main.tf
resource "aws_vpc" "terraform-lab-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "terraform-lab-vpc" }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.terraform-lab-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = { Name = "PublicSubnet" }
}

resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.terraform-lab-vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false
  tags = { Name = "PrivateSubnetA" }
}

resource "aws_internet_gateway" "terraform-lab-igw" {
  vpc_id = aws_vpc.terraform-lab-vpc.id
  tags = { Name = "terraform-lab-igw" }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.terraform-lab-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform-lab-igw.id
  }
  tags = { Name = "PublicRouteTable" }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
