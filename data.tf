data "azurerm_subscription" "primary" {
  subscription_id = "2dd7ef84-05cb-4faf-9f4e-1e216b03b037"
}

# security group sg_az_sub-dev_reader_01
data "azuread_group" "snapshot-groups" {
  display_name = "AGO-pd-usr-609-eCom-Disk-Snapshot-Contributor"
}

