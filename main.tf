resource "azurerm_role_definition" "example" {
  name        = "ARO-Costco-custom-snapshot-role"
  scope       = data.azurerm_subscription.primary.id
  description = "This is a custom role for snapshots using Terraform - Final Testing as per Srini Request"

  permissions {
    actions = [
      "Microsoft.Compute/virtualMachines/read",
      "Microsoft.Compute/virtualMachines/instanceView/read",
      "Microsoft.Compute/disks/read",
      "Microsoft.Compute/snapshots/delete",
      "Microsoft.Compute/snapshots/read",
      "Microsoft.Compute/snapshots/write",
      "Microsoft.Compute/disks/beginGetAccess/action",
      "Microsoft.Compute/snapshots/beginGetAccess/action",
      "Microsoft.Compute/snapshots/endGetAccess/action",
      "Microsoft.Resources/deployments/validate/action",
      "Microsoft.Resources/deployments/write",
      "Microsoft.Resources/deployments/read",
    ]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,   
  ]
}

resource "azurerm_role_assignment" "example3" {
  scope              = data.azurerm_subscription.primary.id
  role_definition_id = azurerm_role_definition.example.role_definition_resource_id
  principal_id       = data.azuread_group.snapshot-groups.object_id
}
