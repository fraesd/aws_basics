resource "aws_subnet" "main" {
  vpc_id  = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "blue" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name  = "blue"
  }
}

resource "aws_subnet" "red" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name  = "red"
  }
}

resource "aws_subnet" "green" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name  = "green"
  }
}
