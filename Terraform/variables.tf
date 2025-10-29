variable "docker_username" {
  description = "Docker Hub username for authentication"
  type        = string
}

variable "docker_password" {
  description = "Docker Hub password or access token for authentication"
  type        = string
  sensitive   = true
}
