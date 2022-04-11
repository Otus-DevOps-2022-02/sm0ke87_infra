variable cloud_id {
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable public_key_path {
  # Описание переменной
  description = "public key for ssh"
}
variable image_id {
  description = "Disk image"
}
variable subnet_id {
  description = "Subnet"
}
variable service_account_key_file {
  description = "service account key file"
}

variable private_key_path {
  description = "private key path"
}

variable app_instance_zone {
  description = "Zone for test app"
  default     = "ru-central1-a"
}
