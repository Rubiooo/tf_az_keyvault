variable "location" {
  default = ""
}

variable "environment_name" {
    default = ""
}
variable "subscription_id" {}
variable "tenant_id" {}

variable "project_name" {
  default = ""
}

variable "additional_tags" {
  default = {}
}

variable "years" {
  default = 2
}

variable "keyvault_rg" {
  default = ""
}

variable "aks_role_name" {
  default = ""
}

variable "custom_ip_whitelist" {
  type = list(string)
  default = [
    "",
    
  ]
}
