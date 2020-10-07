output "ip_addresses" {
  value = {
    for vm in libvirt_domain.db:
      vm.name => vm.network_interface.*.addresses
  }
}
