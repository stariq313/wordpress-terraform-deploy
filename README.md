# 🛠️ WordPress EC2 Deployment with Terraform (Modular Approach)

This project automates the deployment of a WordPress-ready EC2 instance on AWS using Terraform built using **modules**, **cloud-init**, and structured Terraform best practices.

---

## 🚀 What It Does

- Provisions an EC2 instance using a specified Amazon Linux AMI
- Installs Apache, PHP, MariaDB, and WordPress via `cloud-init.sh`
- Opens port `80` (HTTP) and `22` (SSH) using a Security Group
- Outputs the **public IP** of the deployed WordPress server

---

## 📁 Project Structure

wordpress-terraform/
├── main.tf # Root module - wires everything together
├── cloud-init.sh # Bootstraps WordPress on EC2
├── .gitignore # Ignores Terraform state files, etc.
├── modules/
│ └── ec2-wordpress/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf


### ⚙️ How to Use

1. **Clone the repo**


git clone https://github.com/stariq313/wordpress-terraform-deploy.git
cd wordpress-terraform-deploy

2. **Initialize Terraform**

`terraform init`

3. **Review the plan**

`terraform plan`

4. **Apply the changes**

terraform apply

5. **Get the Public IP**

The output will show the EC2 public IP. Paste it into your browser (use http://) to access WordPress setup.

6. **Destroy when done**

`terraform destroy`

**Lessons Practiced TLDR**
#Terraform modules#

#Cloud-init EC2 bootstrapping#

#Security Groups#

#Outputs and variables#

#GitHub integration with .gitignore#


