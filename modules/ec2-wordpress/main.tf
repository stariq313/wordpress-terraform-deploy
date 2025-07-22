data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


resource "aws_instance" "wordpress" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  user_data              = var.user_data
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
  from_port   = var.http_port
  to_port     = var.http_port
  protocol    = "tcp"
  cidr_blocks = [var.http_cidr]
}

ingress {
  from_port   = var.ssh_port
  to_port     = var.ssh_port
  protocol    = "tcp"
  cidr_blocks = [var.ssh_cidr]
}


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound
  }
}


