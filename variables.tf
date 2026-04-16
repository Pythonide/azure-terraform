variable "resource_group_name" {
  description = "This is the name of the resource group"
  type        = string
  default     = "Terraform_RG"
}

variable "location" {
  description = "This is the location of the resource group"
  type        = string
  default     = "Central US"
}

variable "vnet_name" {
  description = "This is the name of the Virtual Network"
  type        = string
  default     = "My-VNet"
}

variable "vnet_address_space" {
  description = "This is the VNet Address Space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "This is the name of the subnet"
  type        = string
  default     = "My-Subnet"
}

variable "subnet_address_space" {
  description = "This is the subnet Address Space"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "nsg_name" {
  description = "This is the name of the Network Security Group"
  type        = string
  default     = "My-NSG"
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Size of VM"
  type = string
  default = "Standard_DC4s_v3"
}