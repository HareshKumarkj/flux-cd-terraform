# Variables for Hello World Terraform

variable "environment" {
  description = "Environment name (dev, test, prod)"
  type        = string
  default     = "test"
}

variable "message" {
  description = "Custom message to include in outputs"
  type        = string
  default     = "Hello from Flux Terraform Controller!"
}
