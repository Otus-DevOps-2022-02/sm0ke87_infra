provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_compute_instance" "app" {
  name = "reddit-app"
  zone = "ru-central1-a"

  resources {
    cores         = 2
    memory        = 4
    core_fraction = 5
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }

  connection {
    type        = "ssh"
    host        = yandex_compute_instance.app.network_interface.0.nat_ip_address
    user        = "ubuntu"
    agent       = false
    private_key = file("~/.ssh/sm0ke")
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

}
