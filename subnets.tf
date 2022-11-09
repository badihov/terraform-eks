resource "aws_subnet" "sub1" {
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "Private subnet 10.1"
  }
  vpc_id = aws_vpc.vpc1.id


}

resource "aws_subnet" "sub2" {
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "Public subnet 10.1"
  }
  vpc_id = aws_vpc.vpc1.id


}
