
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  name = "myVPC"
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
 
}

resource "aws_subnet" "main2publicSubnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1c"
  
  
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
}
