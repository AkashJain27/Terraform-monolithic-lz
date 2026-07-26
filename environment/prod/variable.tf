variable "rg" {
  type = any
}

variable "vnet" {
  type = any
}

variable "subnet" {
  type = any
}

variable "public_ip" {
  type = any
}

variable "vm" {
  type = any
}

variable "key_vault" {
  type = any
  default = {}
}

variable "lb" {
  type = any
  default = {}
}

variable "bastion" {
  type = any
  default = {}
}

variable "app_gateway" {
  type = any
  default = {}
}