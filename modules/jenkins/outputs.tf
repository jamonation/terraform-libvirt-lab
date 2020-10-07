output "ip_addresses" {
  value = {
    for vm in libvirt_domain.jenkins:
      vm.name => vm.network_interface.*.addresses
  }
}
