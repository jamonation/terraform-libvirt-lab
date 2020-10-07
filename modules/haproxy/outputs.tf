output "ip_addresses" {
  value = {
    for vm in libvirt_domain.haproxy:
      vm.name => vm.network_interface.*.addresses
  }
}
