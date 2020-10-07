module "db" {
  source = "../../modules/db"

  image = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
  number = 2
  vcpus = 2
  memory = 2048
  volume-prefix = "mysql"
}
