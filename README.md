# Recruitment Challenge: Azure Verified Module - Management Lock (AZAPI Only)

**Objective:**
Your task is to develop a Terraform module that provisions an Azure Management Lock at the Resource Group scope. This module should strictly adhere to the principles and guidelines outlined in the [Azure Verified Module (AVM) development guide](https://azure.github.io/Azure-Verified-Modules/contributing/terraform/composition/). Crucially, **this module must exclusively use the `azapi` provider** for all Azure interactions, including resource provisioning and any necessary data lookups. While a complete, production-ready module includes tests and CI/CD pipelines, for this challenge, focus primarily on the module's structure, variable definitions, outputs, and resource definitions as per AVM best practices. Examples are optional but can demonstrate a deeper understanding.

**Module Requirements:**

1. **Resource Provisioned:** A single Azure Management Lock at the **Resource Group scope**.

2. **Provider Usage:**
    * **MUST exclusively use the `azapi` provider.**
    * **The `azurerm` provider is strictly forbidden, even for data sources.**
    * You are permitted to use the `azapi_resource`, `azapi_resource_id`, and `azapi_resource_list` **data sources** for any necessary information retrieval (e.g., confirming resource group existence or getting its location).

3. **AVM Adherence:**
    * **Module Structure:** Follow the recommended directory structure for AVM.
    * **Variables:**
        * All variables must have clear descriptions.
        * Use appropriate `type` constraints.
        * Include `default` values where reasonable, especially for optional parameters.
        * Support `tags` (if applicable for management locks via `azapi`, although often not directly). If `tags` are not directly supported by the ARM API for locks, clearly state this in your module's comments or documentation.
        * The `resource_group_name` should be a required input, identifying where the lock will be applied.
        * The `lock_level` (e.g., `CanNotDelete`, `ReadOnly`) should be a required input.
        * The `name` of the management lock should be a required input.
        * An optional `notes` variable for the lock's description.
        * The `subscription_id` should be a required input, as you cannot rely on `azurerm` to implicitly determine it.
    * **Outputs:**
        * Output the `id` of the management lock.
        * Output the `name` of the management lock.
        * Output the `lock_level` of the management lock.
        * All outputs must have clear descriptions.
    * **Naming Conventions:** Adhere to AVM naming conventions for variables, outputs, and resources where applicable.
    * **Provider Configuration:** Assume the `azapi` provider is already configured in the root module. Your module should *not* define `provider "azapi"`.

4. **No Tests or CI:** You are explicitly *not* required to write automated tests (e.g., using Terratest) or configure CI/CD pipelines for this challenge.

5. **Examples (Optional):** You may include an `examples` directory with a basic usage example of your module, demonstrating how to provision a management lock using your module.

**Deliverables:**

Please provide a ZIP archive or a link to a Git repository containing the following:

* The complete Terraform module for the management lock, following the AVM structure.
* (Optional) An `examples` directory with a simple usage example.

**Evaluation Criteria:**

Your submission will be evaluated based on:

* **AVM Compliance:** How well the module adheres to the AVM development guide's structural, variable, output, and naming conventions.
* **Correctness and `azapi` Purity:** Does the module correctly provision an Azure Management Lock at the specified scope *exclusively* using the `azapi` provider? This includes correctly constructing the `body` JSON for `azapi_resource` and the `scope` string, and demonstrating appropriate use of `azapi` data sources for any lookups.
* **Readability and Maintainability:** Is the code clean, well-commented (where necessary), and easy to understand?
* **Robustness:** Does the module handle common scenarios gracefully (e.g., proper validation through types)?
