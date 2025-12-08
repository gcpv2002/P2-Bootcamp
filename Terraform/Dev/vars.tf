variable "rgname-var" {
  type = string
  default = "default"
}

variable "location-var" {
  type = string
  default = "canadacentral"
}

variable "aksname-var" {
  type = string
  default = "default"
}

variable "dns-var" {
  type = string
  default = "default"
}

variable "aks-location-var" {
  type = string
  default = "canadacentral"
}

variable "aks-nodepool-var" {
  type = string
  default = "agentpool"
}

variable "aksrg-var" {
  type = string
  default = "default"
}


variable "min-count-var" {
  type = number
  default = 1
}

variable "max-count-var" {
  type = number
  default = 1
}

variable "node-vm-size-var" {
  type = string
  default = "Standard_D2ps_v6"
}