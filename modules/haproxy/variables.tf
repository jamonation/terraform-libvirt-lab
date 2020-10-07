variable "vcpus" {
  description = "How many vcpus to allocate to the VM"
  type = number
  default = 1
}

variable "memory" {
  description = "How many MBs to allocate to the VM"
  type = number
  default = 512
}

variable "number" {
  description = "How many machines to create"
  type = number
  default = 1
}

variable "image" {
  description = "Which qcow2 image to use for the base OS"
  type = string
  default = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
}

variable "volume-prefix" {
  description = "Prefix for volume names e.g. ubuntu-haproxy-..."
  default = "haproxy"
  type = string
}


