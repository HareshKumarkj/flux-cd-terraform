# Hello World Terraform Configuration

A simple Terraform configuration to verify Flux Terraform Controller workflow.

## What This Does

This configuration creates:
- A random ID for uniqueness
- A text file with a hello world message
- A JSON configuration file with metadata

## Resources Created

- `random_id.hello` - Generates a unique 4-byte random ID
- `local_file.hello_world` - Creates a text file with hello message
- `local_file.config` - Creates a JSON config file

## Outputs

- `hello_message` - The configured message
- `random_id` - The generated random ID
- `hello_file_path` - Path to the hello world text file
- `config_file_path` - Path to the config JSON file
- `timestamp` - When resources were created
- `environment` - The environment name

## Testing Locally

```bash
cd hello-world-terraform
terraform init
terraform plan
terraform apply
```

## Clean Up

```bash
terraform destroy
```

## Use with Flux

See the `example-configs/hello-world-*.yaml` files for Flux configuration examples.
