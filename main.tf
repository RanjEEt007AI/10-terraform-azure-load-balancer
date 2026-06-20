# Resource Group

resource "azurerm_resource_group" "ranjeet-rg" {
  name     = "loadbalancer-rg"
  location = "Central India"
}

# Public IP

resource "azurerm_public_ip" "pip" {
  name                = "lb-public-ip"
  location            = azurerm_resource_group.ranjeet-rg.location
  resource_group_name = azurerm_resource_group.ranjeet-rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Load Balancer

resource "azurerm_lb" "lb" {
  name                = "my-loadbalancer"
  location            = azurerm_resource_group.ranjeet-rg.location
  resource_group_name = azurerm_resource_group.ranjeet-rg.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "frontend-ip"
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}