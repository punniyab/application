variable "business_unit" {
  description = "Business Unit"
  type        = string
  default     = "hr"
}
variable "Environment" {
  description = "Environment Name"
  type        = string
  default     = "Dev"
}

variable "resource_group_location" {
  description = "resource group location "
  type        = string
  default     = "east us"
}

variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myvnet"
}

variable "resource_group_name" {
  description = "Resource Groupn Name"
  type        = string
  default     = "myrg01"
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
  default     = "mysubnet"
}

variable "virtual_network_address_space" {
  description = "Virtual network address space"
  type        = list(string)
  default     = ["10.0.0.0/16", "10.1.0.0/16"]
}

variable "public_ip_sku" {
  description = "Public IP Sku"
  type        = map(string)
  default = {
    "eastus"  = "Basic"
    "eastus2" = "Standard"
  }
}

variable "Common_tags" {
  description = "Common tas for all the resources"
  type        = map(string)
  default = {
    "CLITool" = "Terraform"
    "Cloud"   = "Azure"
  }
}