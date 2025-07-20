output "public_ip" {
  description = "The public IP of the WordPress EC2 instance"
  value       = aws_instance.wordpress.public_ip
}

