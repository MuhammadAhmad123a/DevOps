variable "client_secret" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "un18Q~LmZo2MhNUjd6Qv53spKGEdyPhaOhdy0bG~"
}

variable "client_id" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "d5dc1cbf-db1a-4af7-be76-63b7ea4c9190"
}

variable "tenant_id" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "51f4484e-83bb-48c8-83b4-e3dc759e2531"
}

variable "subscription_id" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "fc997bed-d9b5-4aa5-b36c-aae8c6c06000"
}

# Azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "Central US"
}

# Azure Resource Group Name
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "terraform-aks"
}

# Azure Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  default = "dev"
}