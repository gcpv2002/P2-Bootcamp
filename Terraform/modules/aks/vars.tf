variable "aks-name" {
  type = string
}

variable "aks-location" {
  type = string
}

variable "aks-rg" {
  type = string
}

variable "aks-dns" {
  type = string
}

variable "nodepool-name" {
  type = string
}

variable "min-count" {
  type = number
}

variable "max-count" {
  type = number
}

variable "node-vm-size" {
  type = string
}