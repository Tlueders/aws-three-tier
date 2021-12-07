resource "aws_subnet" "web-subnet" {
  vpc_id                  = aws_vpc.main-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Web"
  }
}

resource "aws_subnet" "application-subnet" {
  vpc_id                  = aws_vpc.main-vpc.id
  cidr_block              = "10.0.11.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "Application"
  }
}

resource "aws_subnet" "database-subnet" {
  vpc_id            = aws_vpc.main-vpc.id
  cidr_block        = "10.0.21.0/24"

  tags = {
    Name = "Database"
  }
}