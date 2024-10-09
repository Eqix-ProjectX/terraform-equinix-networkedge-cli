############# Cisco NE Variables #################


variable "cisco_ne_ip" {
  description = "The NE ip shown in the fabric portal"
  type        = string
}

variable "cisco_ne_username" {
  description = "The NE username set in the fabric portal"
  type        = string
}


variable "cisco_ne_password" {
  description = "The NE password set in the fabric portal"
  type        = string
}

variable "ne_interface_number" {
  description = "The NE interface number used in the virtual connection"
  type        = string
}
variable "ne_interface_ip" {
  description = "The NE interface IP"
  type        = string
}

variable "ne_interface_ip_mask" {
  description = "The NE interface IP mask"
  type        = string
}

variable "local_asn" {
  description = "The local ASN"
  type        = string
}

variable "remote_asn" {
  description = "The remote ASN"
  type        = string
}

variable "remote_ip" {
  description = "The remote IP"
  type        = string
}


variable "bgp_password" {
  description = "The BGP password"
  type        = string
}

variable "network_address" {
  description = "The network address to advertise "
  type        = string
}
variable "network_address_mask" {
  description = "The network address mask"
  type        = string
}
