# Simple Hello World Terraform Configuration
# This creates local files and outputs to verify Terraform Controller flow

terraform {
  required_version = ">= 1.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# Generate a random ID for uniqueness
resource "random_id" "hello" {
  byte_length = 4
}

# Create a simple text file
resource "local_file" "hello_world" {
  content  = <<-EOT
    Hello World from Terraform Controller!
    
    Generated at: ${timestamp()}
    Random ID: ${random_id.hello.hex}
    
    This file was created by the Flux Terraform Controller
    to verify the GitOps workflow is functioning correctly.
  EOT
  filename = "${path.module}/hello-world-${random_id.hello.hex}.txt"
}

# Create a JSON configuration file
resource "local_file" "config" {
  content = jsonencode({
    message     = "Hello from Terraform"
    timestamp   = timestamp()
    random_id   = random_id.hello.hex
    environment = var.environment
    version     = "1.0.0"
  })
  filename = "${path.module}/config-${random_id.hello.hex}.json"
}
