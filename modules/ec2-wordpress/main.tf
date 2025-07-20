resource "aws_instance" "wordpress" {
  ami           = "ami-0841b1152f02fa85e"
  # Amazon Linux 2023 (eu-west-2)
  instance_type = "t2.micro"
  key_name      = "wordpress-key"  #

  user_data = var.user_data
  vpc_security_group_ids = [aws_security_group.wordpress_sg.id]


  tags = {
    Name = "WordPressServer"
  }
}

resource "aws_security_group" "wordpress_sg" {
  name        = "wordpress-sg-v2"
  description = "Allow HTTP and SSH"
  vpc_id      = null  # We'll let AWS figure this out automatically

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP from anywhere
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere (for now)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound
  }
}


