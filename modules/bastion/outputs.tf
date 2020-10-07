output "ip_addresses" {
  value = {
    for vm in libvirt_domain.bastion:
      vm.name => vm.network_interface.*.addresses
  }
}
