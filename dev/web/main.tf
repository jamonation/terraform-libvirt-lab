module "web" {
  source = "../../modules/web"

  image = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
  number = 4
  vcpus = 1
  memory = 512
  volume-prefix = "ubuntu-web"
}
