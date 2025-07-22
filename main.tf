terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

module "wordpress_server" {
  source        = "./modules/ec2-wordpress"
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file("${path.module}/cloud-init.sh")
}


output "wordpress_public_ip" {
  value = module.wordpress_server.public_ip
}




