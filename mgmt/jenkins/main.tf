module "jenkins" {
  source = "../../modules/jenkins"

  image = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
  number = 1
  vcpus = 2
  memory = 4096
  volume-prefix = "ubuntu-jenkins"
}
