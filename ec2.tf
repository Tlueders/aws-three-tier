// can be found from aws console (launch instance > quick start > free tier only)
resource "aws_instance" "webserver" {
  ami                    = var.ami_image_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet.id
  user_data              = file("scripts/install_apache.sh")

  tags = {
    Name = "Web Server"
  }
}