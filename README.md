# Azure Management Lock Module (AZAPI Only)

This Terraform module provisions an Azure Management Lock at the Resource Group scope using only the `azapi` provider.

## Requirements

- Terraform >= 1.3
- azapi provider >= 1.5.0

## Inputs

| Name                | Description                                               | Type   | Required |
|--------------------|-----------------------------------------------------------|--------|:--------:|
| subscription_id    | The subscription ID where the resource group exists.      | string | yes      |
| resource_group_name| The name of the resource group to lock.                   | string | yes      |
| lock_name          | The name of the management lock.                          | string | yes      |
| lock_level         | The lock level: CanNotDelete or ReadOnly.                 | string | yes      |
| notes              | Optional notes about the lock.                            | string | no       |

## Outputs

- `management_lock_id`
- `management_lock_name`
- `management_lock_level`

## Example Usage

See `examples/basic`.
