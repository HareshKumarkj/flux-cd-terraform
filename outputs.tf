# Outputs for Hello World Terraform

output "hello_message" {
  description = "The hello world message"
  value       = var.message
}

output "random_id" {
  description = "Generated random ID"
  value       = random_id.hello.hex
}

output "hello_file_path" {
  description = "Path to the generated hello world file"
  value       = local_file.hello_world.filename
}

output "config_file_path" {
  description = "Path to the generated config file"
  value       = local_file.config.filename
}

output "timestamp" {
  description = "Timestamp when resources were created"
  value       = timestamp()
}

output "environment" {
  description = "Environment name"
  value       = var.environment
}
