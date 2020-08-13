variable "project" {
  default = "Test"
}

variable "environment" {
  default = "dev"
}

variable "tags" {
  type    = map
  default = {}
}

variable "vnet_tags" {
  type = map
}

variable "location" {
  default = "East US 1"
}

variable "vnet_cidr" {
  description = "Vnet cidr block"
  default     = ["10.0.0.0/16"]
}

variable "subnet_cidrs_public" {
  description = "Public Subnet 1 cidr block"
}

variable "subnet_cidrs_private" {
  description = "Private cidr block"
}

variable "subnet_cidrs_mgmt" {
  description = "MGMT cidr block"
}
