# Auth0 Terraform Module

This Terraform module provisions an entire Auth0 estate based on the customizations defined in YAML files. It allows for extensive configuration options to leverage the capabilities of Auth0.

## Structure

- `main.tf`: Main Terraform configuration file.
- `variables.tf`: Input variables definition.
- `outputs.tf`: Outputs for the module.
- `customizations.yaml`: Example YAML file for custom configurations.
- `terraform-docs.yml`: Configuration for terraform-docs.

## Usage

1. Clone the repository.
2. Modify `customizations.yaml` to reflect your Auth0 configuration.
3. Run the following commands:

   ```bash
   terraform init
   terraform apply