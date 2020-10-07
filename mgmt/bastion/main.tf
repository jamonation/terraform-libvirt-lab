module "bastion" {
  source = "../../modules/bastion"

  image = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
  number = 1
  volume-prefix = "bastion"
}
