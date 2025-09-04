variable "project" {
  type    = string
  default = "Econiwas"
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "vnet_name" {
  type    = string
  default = "vnet"
}
variable "vnet_address_space" {
  type    =  list(string)
  default = ["10.2.0.0/16"]
}

variable "Vnet_subnet1_name" {
  type    = string
  default = "app_subnet"
}
variable "Vnet_subnet1_address_prefix" {
  type    = string
  default = "10.2.0.0/24"
}
variable "Vnet_subnet2_name" {
  type    = string
  default = "Db_subnet"
}
variable "Vnet_subnet2_address_prefix" {
  type    = string
  default = "10.2.1.0/24"
}

#public ip 
variable "public_ip_name" {
  type    = string
  default = "app_pub_ip"
}
variable "nic_name" {
  type    = list(string)
  default = ["app_nic", "db_nic"]
}

variable "Vm_names" {
  type = list(string)
  default = ["app-server", "db-server"] 
}

variable "Vmsize" {
  description = "List of VM sizes for the linux virtual machines"
  type        = list(string)
  default     = ["Standard_D16aS_v5", "Standard_D4aS_v5"] # Example sizes
}

variable "Vm_usernames" {
    type = list(string)
    default = ["appadmin", "dbadmin"] # Example usernames for each VM
}

variable "Vms_os_disk_name" {
  description = "List of OS disk names for each VM"
  type        = list(string)
  default     = ["prod__econiwas_app_osdisk", "prod__econiwas_db_osdisk"] # Example names
}

variable "Vm_os_disk_sizes" {
  description = "List of OS disk sizes for each VM"
  type        = list(number)
  default     = [128, 128] # Different disk sizes for each VM
}

variable "os_disk_storage_types" {
  description = "List of storage account types for OS disks"
  type        = list(string)
  default     = ["Standard_LRS", "StandardSSD_LRS"] # HDD for 1st VM, SSD for 2nd VM
}

variable "data_disk_names" {
  type    = list(string)
  default = ["app_datadisk", "db_datadisk"]
}

# Data Disk Storage Types  
variable "data_disk_storage_types" {
  description = "List of storage account types for data disks"
  type        = list(string)
  default     = ["Standard_LRS", "StandardSSD_LRS"] # HDD for 1st VM, SSD for 2nd VM
}

variable "data_disk_sizes" {
  type    = list(number)
  default = [64, 128]  # 50GB for app, 100GB for db
}
