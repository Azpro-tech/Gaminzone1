module "vnet1" {
  source        = "../../modules/vnet"
  vnet_name     = "vnet999"
  rg_name       = "azim-rg"
  vnet_location = "central india"
  address_space = ["10.0.0.0/16"]
}

module "subnet1" {
  source           = "../../modules/subnet"
  depends_on       = [module.vnet1]
  subnet_name      = "frontend-subnet"
  vnet_name        = "vnet999"
  rg_name          = "azim-rg"
  address_prefixes = ["10.0.1.0/24"]
}

module "subnet2" {
  source           = "../../modules/subnet"
  depends_on       = [module.vnet1]
  subnet_name      = "backend-subnet"
  vnet_name        = "vnet999"
  rg_name          = "azim-rg"
  address_prefixes = ["10.0.2.0/24"]
}
