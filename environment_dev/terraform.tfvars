resource_groups = {
  rgs1 = {
    name     = "dinesh_rg"
    location = "westus"
  }
  rgs2 = {
    name     = "dinesh1_rg"
    location = "eastus"
  }
  rgs3 = {
    name     = "dinesh2_rg"
    location = "eastus"
  }
}

virtual_network = {
  vnet1 = {
    name                = "dhondu"
    location            = "westus"
    resource_group_name = "dinesh_rg"
    address_space       = ["10.0.0.0/16"]
  }
}

snets = {
  subnet1 = {
    name                 = "frontend_subnet"
    virtual_network_name = "dhondu"
    resource_group_name  = "dinesh_rg"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "backend_subnet"
    virtual_network_name = "dhondu"
    resource_group_name  = "dinesh_rg"
    address_prefixes     = ["10.0.2.0/24"]
  }
}