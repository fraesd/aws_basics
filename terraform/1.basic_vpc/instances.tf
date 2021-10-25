#data "aws_ami" "ubuntu" {
#  most_recent = true
#  
#  filter {
#    name = "name"
#    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#  }
#
#  filter {
#    name = "virtualization-type"
#    values = ["hvm"]
#  }
#
#  owners = ["099720109477"] # Canonical
#}
#
#resource "aws_instance" "web_1_private" {
#  ami = data.aws_ami.ubuntu.id
#  instance_type = "t3.small"
#  subnet_id = aws_subnet.blue.id
#  key_name = "patryk_jurkiewicz"
#
#  tags = {
#    Name  = "web_1"
#    Public = false
#  }
#}
#
#resource "aws_instance" "web_2_private" {
#  ami = data.aws_ami.ubuntu.id
#  instance_type = "t3.small"
#  subnet_id = aws_subnet.red.id
#  key_name = "patryk_jurkiewicz"
#
#  tags = {
#    Name  = "web_2"
#    Public = false
#  }
#}
#
#resource "aws_instance" "web_3_private" {
#  ami = data.aws_ami.ubuntu.id
#  instance_type = "t3.small"
#  subnet_id = aws_subnet.green.id
#  key_name = "patryk_jurkiewicz"
#
#  tags = {
#    Name  = "web_3"
#    Public = false
#  }
#}
#
#resource "aws_instance" "web_1_public" {
#  ami = data.aws_ami.ubuntu.id
#  instance_type = "t3.small"
#  subnet_id = aws_subnet.blue.id
#  key_name = "patryk_jurkiewicz"
#  associate_public_ip_address = true
#
#  tags = {
#    Name  = "web_1"
#    Public = true
#  }
#}
#
#resource "aws_instance" "web_2_public" {
#  ami = data.aws_ami.ubuntu.id
#  instance_type = "t3.small"
#  subnet_id = aws_subnet.red.id
#  key_name = "patryk_jurkiewicz"
#  associate_public_ip_address = true
#
#  tags = {
#    Name  = "web_2"
#    Public = true
#  }
#}
#
#resource "aws_instance" "web_3_public" {
#  ami = data.aws_ami.ubuntu.id
#  instance_type = "t3.small"
#  subnet_id = aws_subnet.green.id
#  key_name = "patryk_jurkiewicz"
#  associate_public_ip_address = true
#
#  tags = {
#    Name  = "web_3"
#    Public = true
#  }
#}
