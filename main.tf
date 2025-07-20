terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"  #
}




module "wordpress_server" {
  source        = "./modules/ec2-wordpress"
  ami           = "ami-0841b1152f02fa85e"
  instance_type = "t2.micro"
  key_name      = "wordpress-key"
  user_data = file("${path.module}/cloud-init.sh")

}

output "wordpress_public_ip" {
  value = module.wordpress_server.public_ip
}




