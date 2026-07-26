module "resource_group" {
  source = "../../Modules/azurerm_resource_group"
  
  rg =var.rg
  
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source = "../../Modules/azurerm_vnet"
  
  vnet=var.vnet
  
}
module "subnet" {
  depends_on = [module.virtual_network,module.resource_group]
  source = "../../Modules/azurem_subnet"
  subnet=var.subnet

}

module "public_ip" {
  depends_on = [module.resource_group]
  source = "../../Modules/azurem_publicip"
  public_ip=var.public_ip
  
}
module "virtual_machine" {
  depends_on = [module.public_ip,module.subnet]
  source = "../../Modules/azurerm_virtual_machine"
  vm=var.vm
 
}
