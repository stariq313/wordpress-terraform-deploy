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

variable "http_port" {
  description = "Port for HTTP access"
  type        = number
  default     = 80
}

variable "ssh_port" {
  description = "Port for SSH access"
  type        = number
  default     = 22
}

variable "ssh_cidr" {
  description = "Allowed CIDR block for SSH"
  type        = string
}

variable "http_cidr" {
  description = "Allowed CIDR block for HTTP"
  type        = string
  default     = "0.0.0.0/0"
}
