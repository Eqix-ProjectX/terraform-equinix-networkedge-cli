terraform {
  required_providers {
    iosxe = {
      source = "CiscoDevNet/iosxe"
      version = "0.5.6"
    }
  }
}

provider "iosxe" {
  username = var.cisco_ne_username
  password = var.cisco_ne_password
  url      = var.cisco_ne_ip
}
