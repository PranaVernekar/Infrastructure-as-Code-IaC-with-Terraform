# Infrastructure as Code (IaC) with Terraform

Welcome to the **Infrastructure-as-Code-IaC-with-Terraform** project! This repository demonstrates how to automate the provisioning of infrastructure using [Terraform](https://www.terraform.io/), a popular open-source IaC tool.

## 🚀 Project Overview

This project showcases the use of Terraform for deploying infrastructure resources. It serves as a template and learning resource for anyone interested in automating cloud infrastructure tasks using code.

### What is Infrastructure as Code (IaC)?

Infrastructure as Code (IaC) is the practice of managing and provisioning computing infrastructure through machine-readable configuration files, rather than through physical hardware configuration or interactive configuration tools.

### What is Terraform?

[Terraform](https://www.terraform.io/) by HashiCorp is an open-source IaC tool that enables you to define and provide data center infrastructure using a declarative configuration language.

## 📂 Repository Structure

- `main.tf` - Main Terraform configuration file.
- `variables.tf` - Defines input variables.
- `outputs.tf` - Specifies outputs after Terraform runs.
- `provider.tf` - Configures the cloud provider.
- `README.md` - Project documentation (this file).

## 🛠️ Setup Instructions

1. **Install Terraform:**  
   Download and install from [terraform.io](https://www.terraform.io/downloads.html).

2. **Clone the Repository:**
   ```bash
   git clone https://github.com/PranaVernekar/Infrastructure-as-Code-IaC-with-Terraform.git
   cd Infrastructure-as-Code-IaC-with-Terraform
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Review and Update Variables:**  
   Edit `variables.tf` as needed for your environment.

5. **Plan and Apply:**
   ```bash
   terraform plan
   terraform apply
   ```

## 🌟 Example Usage

```hcl
# Example: Provision an AWS EC2 instance
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = "t2.micro"
}
```

## 🖼️ Screenshots

Below are screenshots showing the output and process:

<img width="1920" height="1080" alt="Screenshot (116)" src="https://github.com/user-attachments/assets/5f136419-12ca-48ef-9668-ba3f5a69bd8d" />
<img width="1919" height="1018" alt="Screenshot 2025-09-25 114244" src="https://github.com/user-attachments/assets/90c2b73f-7313-46c9-a94c-bc98662d0840" />
<img width="1919" height="1017" alt="Screenshot 2025-09-25 114345" src="https://github.com/user-attachments/assets/12bc222f-2a73-4f97-a5d6-9bde4015b647" />
<img width="1917" height="1019" alt="Screenshot 2025-09-25 113945" src="https://github.com/user-attachments/assets/08bd0366-65ab-40fe-b42b-596b97a1a4d2" />

## 📖 References & Resources

- [Terraform Documentation](https://www.terraform.io/docs)
- [IaC Concepts](https://www.redhat.com/en/topics/automation/what-is-infrastructure-as-code)
- [AWS Provider Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.

---

*Feel free to open an issue or a pull request if you have suggestions or questions!*