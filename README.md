# Infrastructure as Code (IaC) with Terraform

## 🚀 Objective

Provision a **local Docker container** using [Terraform](https://www.terraform.io/), demonstrating Infrastructure as Code (IaC) principles for fast, repeatable, and automated environment setup.

---

## 🛠️ Tools Used

- **Terraform:** Declarative infrastructure provisioning tool.
- **Docker:** Containerization platform.

---

## 📁 Repository Structure

- `main.tf` — Terraform configuration to provision a Docker container.
- `README.md` — Project documentation (this file).
- Additional files: Terraform state files, logs, and config files generated during execution.

---

## 🧑‍💻 Quick Start

### 1. **Install Prerequisites**

- [Install Terraform](https://www.terraform.io/downloads.html)
- [Install Docker](https://docs.docker.com/get-docker/)

### 2. **Clone this Repository**

```bash
git clone https://github.com/PranaVernekar/Infrastructure-as-Code-IaC-with-Terraform.git
cd Infrastructure-as-Code-IaC-with-Terraform
```

### 3. **Initialize Terraform**

```bash
tf init
```

### 4. **Review the Configuration**

- Open `main.tf` and inspect or modify the Docker image/container configuration as desired.

### 5. **Plan Infrastructure Changes**

Preview what Terraform will do:

```bash
tf plan
```

### 6. **Apply Changes**

Provision your Docker container:

```bash
tf apply
```

### 7. **Check State**

Inspect the current state of your infrastructure:

```bash
tf state list
```

### 8. **Destroy Infrastructure**

Clean up everything created:

```bash
tf destroy
```

---

## 📝 Example: Provisioning a Docker Container

```hcl
tf {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.6.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}
```

---

## 📋 Execution Logs

After running the commands above, you’ll see logs indicating the initialization, planning, resource creation, and destruction of your Docker container.

---

## 💡 Hints & Tips

- Use the **Docker provider** in Terraform (`provider "docker"`).
- Write Terraform code to create both an image and a container.
- Always run `terraform plan` before `apply` to preview changes.
- Use `terraform state` to inspect resources managed by Terraform.
- Clean up with `terraform destroy` when done.
- Refer to execution logs for troubleshooting and learning.

---

## 🎯 Outcome

By following these steps, you will understand how to provision local infrastructure using IaC principles, making your setups repeatable and consistent.

---

## 📚 References & Resources

- [Terraform Docker Provider Docs](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs)
- [Terraform Documentation](https://www.terraform.io/docs)
- [Docker Documentation](https://docs.docker.com/)
- [IaC Concepts](https://www.redhat.com/en/topics/automation/what-is-infrastructure-as-code)

---

## 📦 License

Distributed under the MIT License. See `LICENSE` for details.

---

*Questions or suggestions? Open an issue or pull request!*