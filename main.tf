terraform {
  required_version = ">= 1.0.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.13.0"
    }
  }
}

# --- Variables ---
variable "docker_host" {
  description = "Docker daemon host. Examples: unix:///var/run/docker.sock (Linux/mac), npipe:////./pipe/docker_engine (Windows), or tcp://127.0.0.1:2375"
  type        = string
  default     = ""
}

variable "image" {
  description = "Docker image to pull"
  type        = string
  default     = "nginx:stable"
}

variable "container_name" {
  description = "Name for the created container"
  type        = string
  default     = "example-nginx"
}

variable "host_port" {
  description = "Host port to bind"
  type        = number
  default     = 8080
}

variable "container_port" {
  description = "Container internal port"
  type        = number
  default     = 80
}

# --- Provider ---
provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

# --- Pull image ---
resource "docker_image" "app_image" {
  name = var.image
  # keep_locally left as default; provider downloads image if needed
}

# --- Create container ---
resource "docker_container" "app_container" {
  name  = var.container_name
  image = docker_image.app_image.image_id
  ports {
    internal = var.container_port
    external = var.host_port
  }

  # optional: define environment, volumes, command, etc.
  # env = ["FOO=bar"]
}
 
# --- Outputs ---
output "container_id" {
  description = "Docker container ID"
  value       = docker_container.app_container.id
}

output "container_name" {
  description = "Container name"
  value       = docker_container.app_container.name
}

output "host_port" {
  description = "Host port mapped to container"
  value       = var.host_port
}
