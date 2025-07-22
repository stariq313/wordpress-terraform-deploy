module "wordpress_server" {
  source        = "./modules/ec2-wordpress"
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file("${path.module}/cloud-init.sh")
  ssh_cidr      = var.ssh_cidr
  http_cidr     = var.http_cidr
}



output "wordpress_public_ip" {
  value = module.wordpress_server.public_ip
}




