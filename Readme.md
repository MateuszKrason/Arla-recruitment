# Azure Management Lock Module (azapi-only)

This Terraform module creates an Azure Management Lock at the Resource Group scope using the [`azapi`](https://registry.terraform.io/providers/Azure/azapi/latest) provider.

> **Note:** This module is designed to be valid with [Azure Verified Modules (AVM)](https://azure.github.io/Azure-Verified-Modules/) standards.  
> **Important:** Azure Management Locks do not support `tags`.

## Features

- Creates a Management Lock using `azapi_resource`.
- Supports `CanNotDelete` and `ReadOnly` lock levels.
- Outputs lock `id`, `name`, and `level`.

## Usage

```hcl
module "management_lock" {
  source = "."

  subscription_id     = "your-subscription-id"
  resource_group_name = "your-resource-group"
  lock_name           = "example-lock"
  lock_level          = "CanNotDelete"
  notes               = "This lock prevents accidental deletion."
}
```

## Inputs

| Name                 | Description                                                         | Type   | Default | Required |
|----------------------|---------------------------------------------------------------------|--------|---------|----------|
| subscription_id      | The subscription ID where the resource group exists.                | string | n/a     | yes      |
| resource_group_name  | The name of the resource group where the management lock is applied.| string | n/a     | yes      |
| lock_name            | The name of the management lock.                                    | string | n/a     | yes      |
| lock_level           | The level of the lock. Possible values: `CanNotDelete`, `ReadOnly`. | string | n/a     | yes      |
| notes                | Optional notes about the management lock.                           | string | null    | no       |

## Outputs

| Name                  | Description                           |
|-----------------------|---------------------------------------|
| management_lock_id    | The ID of the management lock.        |
| management_lock_name  | The name of the management lock.      |
| management_lock_level | The level of the management lock.     |

## Example

See [`examples/basic/main.tf`](examples/basic/main.tf) for a complete usage example.

## Resources

- [Azure Management Locks Documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/lock-resources)
- [azapi Terraform Provider](https://registry.terraform.io/providers/Azure/azapi/latest)

## License

MIT License.