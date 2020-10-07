module "haproxy" {
  source = "../../modules/haproxy"

  image = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
  number = 2
  vcpus = 1
  memory = 512
  volume-prefix = "haproxy"
}
