output "ip_addresses" {
  value = module.haproxy.ip_addresses
  description = "IPv4 address of haproxy"
}
