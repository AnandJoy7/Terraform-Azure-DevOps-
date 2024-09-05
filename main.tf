# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Create a Resource Group
resource "azurerm_resource_group" "example_rg" {
  name     = "Anand-rg"
  location = "Central India" # Specify your Azure region
}

# Create a Storage Account
resource "azurerm_storage_account" "example_sa" {
  name                     = "mydev147" # Replace with a unique name
  resource_group_name      = azurerm_resource_group.example_rg.name
  location                 = azurerm_resource_group.example_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Dev"
  }
}
