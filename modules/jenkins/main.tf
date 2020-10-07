resource "libvirt_volume" "volume-qcow2" {
  count  = var.number
  source = var.image
  name   = "${var.volume-prefix}-${count.index}.qcow2"
  pool   = "default"
  format = "qcow2"
}

data "template_file" "user_data" {
  template = file("${path.module}/cloud_init.cfg")
}

# Use CloudInit to add the instance
resource "libvirt_cloudinit_disk" "commoninit" {
  name      = "${var.volume-prefix}.commoninit.iso"
  user_data = data.template_file.user_data.rendered
}

resource "libvirt_domain" "jenkins" {
  memory = var.memory
  vcpu   = var.vcpus
  count  = var.number
  name   = "jenkins-${count.index}"

  network_interface {
    network_name = "default"
  }

  disk {
    volume_id = libvirt_volume.volume-qcow2[count.index].id
  }

  cloudinit = libvirt_cloudinit_disk.commoninit.id

  console {
    type = "pty"
    target_type = "serial"
    target_port = "0"
  }

  graphics {
    type = "spice"
    listen_type = "address"
    autoport = true
  }
}

