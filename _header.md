# Azure Management Lock Module (azapi-only)

This Terraform module creates an Azure Management Lock at the Resource Group scope using the `azapi` provider.

> **Note:** This module is designed so that it is valid with [Azure Verified Modules (AVM)](https://azure.github.io/Azure-Verified-Modules/) standards.
>
> **Important:** Azure Management Locks do not support `tags`.

## Module Features

- Creates a Management Lock using `azapi_resource`.
- Supports `CanNotDelete` and `ReadOnly` lock levels.
- Outputs lock `id`, `name`, and `level`.
