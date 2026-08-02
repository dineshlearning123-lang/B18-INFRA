module "rg" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.resource_groups
}

module "vnet" {
  depends_on = [ module.rg ]
  source = "../child_module/azurerm_virtual_network"
  vnets  = var.virtual_network
}

module "subnet" {
  depends_on = [ module.vnet ]
  source  = "../child_module/azrurerm_subnet"
  subnets = var.snets
}