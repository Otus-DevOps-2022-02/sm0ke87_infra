variable public_key_path {
  description = "Path to the public key used for ssh access"
  default = "~/.ssh/sm0ke.pub"
}

variable app_disk_image {
  description = "app disk image"
  default = "reddit-app-base"
}

variable subnet_id {
  description = "subnet for modules"
}
