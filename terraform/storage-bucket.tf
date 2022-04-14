resource "yandex_storage_bucket" "sm0ke" {
  bucket        = "test-smoke"
  access_key    = var.access_key
  secret_key    = var.secret_key
  force_destroy = "true"
}
provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
