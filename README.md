# 🛠️ WordPress Deployment with Terraform (AWS EC2)

This project demonstrates how to deploy a single-instance WordPress site on AWS using **Terraform**, with EC2, `cloud-init`, and modular infrastructure as code (IaC) best practices.

---

## 📦 Features

- 📁 Modular Terraform setup for EC2 & Security Group
- 🔐 SSH access restricted to a specific IP (least privilege)
- ☁️ cloud-init to install and configure WordPress automatically
- 💡 Outputs public IP for easy access
- 🧹 Clean `.gitignore` and readable file structure
- ✅ Dynamic AMI retrieval (no hardcoded AMI ID)

---

## 🧱 Folder Structure

```
.
├── main.tf                  # Root config: loads EC2 module
├── variables.tf             # Input variables (minimal here)
├── provider.tf              # AWS provider block
├── backend.tf               # Remote backend placeholder
├── outputs.tf               # Output public IP
├── cloud-init.sh            # Shell script to install WordPress
└── modules/
    └── ec2-wordpress/
        ├── main.tf          # EC2 + SG resource definitions
        ├── variables.tf     # Inputs for the module
        └── outputs.tf       # Outputs from module
```

---

## 🚀 Getting Started

> Prerequisites:
> - AWS account
> - IAM credentials set via environment variables
> - Key pair created in AWS EC2
> - Terraform installed locally

### 1. Clone the Repo
```bash
git clone https://github.com/stariq313/wordpress-terraform-deploy.git
cd wordpress-terraform-deploy
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Review & Apply Infrastructure
```bash
terraform plan
terraform apply
```

After deployment, you'll see an output like:
```
wordpress_public_ip = "13.41.xx.xx"
```

Paste that IP into your browser to launch WordPress 🚀

---

## 🔐 Security Notes

- SSH (`port 22`) is locked to your IP only.
- HTTP (`port 80`) is open for WordPress setup.
- No hardcoded secrets or credentials committed.

---

## 📌 To-Do / Improvements

- [ ] Move database to RDS
- [ ] Add ALB for high availability
- [ ] Deploy to custom VPC
- [ ] Use S3 + DynamoDB for remote Terraform state

---

## 🧑‍💻 Author

**Saqib Tariq**  
[GitHub Profile](https://github.com/stariq313)
