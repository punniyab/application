locals {
  rg_name     = "${var.business_unit}-${var.Environment}-${var.resource_group_name}"
  vnet_name   = "${var.business_unit}-${var.Environment}-${var.virtual_network_name}"
  subnet_name = "${var.business_unit}-${var.business_unit}-${var.subnet_name}"
}