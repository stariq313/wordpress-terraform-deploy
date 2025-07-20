variable "ami" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  type        = string
}

variable "user_data" {
  description = "Cloud-init user data script content"
  type        = string
}

