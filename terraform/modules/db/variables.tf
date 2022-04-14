variable public_key_path {
  description = "Path to the public key used for ssh access"
  default = "~/.ssh/sm0ke.pub"
}

variable db_disk_image {
  description = "db disk image"
  default = "reddit-db-base"
}

variable subnet_id {
  description = "subnet for modules"
}
