resource "mgc_virtual-machine_instances" "basic_instance" {
  name             = "${var.name}-${var.environment}"
  delete_public_ip = false
  ssh_key_name     = var.ssh_key_name

  machine_type = {
    name = var.machine_type
  }
  image = {
    name = "cloud-ubuntu-22.04 LTS"
  }
  network = {
    associate_public_ip = false # If true, will create a public IP
  }
}

resource "mgc_dbaas_instances" "basic_bd" {
  flavor_id = "small"
  name      = "${var.name}-${var.environment}"
  password  = var.password
  user      = var.user
  volume_size = {
    size = "100GiB"
  }
}