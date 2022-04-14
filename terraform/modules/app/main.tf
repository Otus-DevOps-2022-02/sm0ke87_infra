resource "yandex_compute_instance" "app" {
  name ="reddit-app"
  labels = {
    tags = "reddit-app"
  }
  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }
  }
  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  resources {
    cores  = 2
    core_fraction = 5
    memory = 2
  }
}
