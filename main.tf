/*
make sure to manually run below commands on the Cisco device using CLI

conf t
ip http secure-server
restconf

*/

resource "iosxe_interface_ethernet" "interface_info" {
  type                             = "GigabitEthernet"
  name                             = var.ne_interface_number
  shutdown                         = false
  ipv4_address                     = var.ne_interface_ip
  ipv4_address_mask                = var.ne_interface_ip_mask
  logging_event_link_status_enable = true
}

resource "iosxe_bgp" "local_bgp_info" {
  asn                  = var.local_asn
  log_neighbor_changes = true
}

resource "iosxe_bgp_neighbor" "neighbor_bgp_info" {
  asn                     = var.local_asn
  ip                      = var.remote_ip
  remote_as               = var.remote_asn
  log_neighbor_changes    = true
  password                  = var.bgp_password
}


resource "iosxe_bgp_address_family_ipv4" "network_advertising_info" {
   asn  = var.local_asn
  af_name = "unicast"
ipv4_unicast_networks_mask = [
    {
      network   = var.network_address
      mask      = var.network_address_mask
    }
  ]
}
