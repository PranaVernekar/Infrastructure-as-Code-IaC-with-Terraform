# Infrastructure as Code (IaC) with Terraform

## Objective

Provision a local Docker container using Terraform.

## Tools Used

- **Terraform**
- **Docker**

## Project Structure

- `main.tf`: Contains Terraform configuration to provision Docker containers.

## How to Use

### 1. Initialize Terraform

```bash
terraform init
```
Initializes your Terraform environment and downloads the necessary provider plugins.

---

### 2. Plan Infrastructure Changes

```bash
terraform plan
```
Shows what actions Terraform will take. Always use this to review changes before applying.

---

### 3. Apply the Configuration

```bash
terraform apply
```
Creates the Docker container as defined in `main.tf`.

---

### 4. Check Terraform State

```bash
terraform state list
```
Lists resources currently managed by Terraform.

---

### 5. Destroy Infrastructure

```bash
terraform destroy
```
Removes all resources provisioned by Terraform, cleaning up your environment.

---

## Docker Provider

This project uses the [Terraform Docker provider](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs) for local container management.  
**Note:** Ensure Docker is running on your machine before applying Terraform configurations.

## Deliverables

- **main.tf**: Your Terraform code for provisioning a Docker container.
- **Execution Logs**: Sample logs from running `terraform init`, `plan`, `apply`, and `destroy`.

## Screenshots

*Do not remove this section. Please keep your screenshots here for visual reference.*

![Terraform Init](screenshots/terraform-init.png)
![Terraform Apply](screenshots/terraform-apply.png)
![Docker Container Running](screenshots/docker-running.png)

## Outcome

By following these steps, you will learn how to automate infrastructure provisioning using IaC practices with Terraform and Docker.

---

Feel free to contribute or reach out for any questions!
