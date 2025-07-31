module "vnet1" {
  source        = "../../modules/vnet"
  vnet_name     = "vnet999"
  rg_name       = "azim-rg"
  vnet_location = "central india"
  address_space = ["10.0.0.0/16"]
}

