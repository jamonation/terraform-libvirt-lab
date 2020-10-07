output "ip_addresses" {
  value = {
    for vm in libvirt_domain.web:
      vm.name => vm.network_interface.*.addresses
  }
}
