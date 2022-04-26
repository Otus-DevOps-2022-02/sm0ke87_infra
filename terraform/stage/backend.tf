terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "test-smoke"
    region                      = "ru-central1-a"
    access_key                  = "YCAJEF6hC9mhzemrQNcsn2smC"
    secret_key                  = "YCORwmjgKE5d4YUljRlbWYkndnXyx-wo-H9J0YSd"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
