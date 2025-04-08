
variable "location" {
    type = string
    description = "Location of the resource."
    default = "centralus"
}
variable "location_abr" {
    type = string
    description = "Location of the resource."
    default = "cus"
}

variable "resource_group_postfix" {
  type = string
  default = "rg"
  description = "Resource group prefix"
}
variable "project_name" {
  type = string
  default = "OTOZ"
  description = "Project name for specific resource."
}
variable "client_name" {
  type = string
  description = "Client name for specific resource."
}

variable "client_name_prefix" {
  type = string
  description = "Client name for specific resource."
}

variable "env" {
  type = string
  default = "dev"
  description = "Environment name for which resource is created."
}




