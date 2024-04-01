resource "azurerm_public_ip" "pip" {
  name = "webip"
  resource_group_name = "testbicep"
  location = "eastus"
  allocation_method = "Static"
}

resource "azurerm" "name" {
  
}

resource "azurerm_linux_vertual_machine" "apache" {
  
}