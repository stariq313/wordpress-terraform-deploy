variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "ssh_cidr" {
  description = "CIDR block allowed for SSH access"
  type        = string
}

variable "http_cidr" {
  description = "CIDR block allowed for HTTP access"
  type        = string
}
