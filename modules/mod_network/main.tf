#vpc
resource "aws_vpc" "main" {
 cidr_block = var.vpc_cidr
}

#gw
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id 
}

#public_subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id 
  cidr_block = var.public_cidr
}

#route_table
resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}
variable "vpc_cidr" {
    description= "to define the cidr of vpc"
    type = string 
}

variable "public_cidr" {
    description= "to define the aws_subnet"
    type = string 
}