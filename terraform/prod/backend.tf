terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "test-smoke"
    region                      = "ru-central1-a"
    access_key                  = "YCAJEaBGj3zaTLRdB8gQ9test"
    secret_key                  = "YCMnMot7olMEIhkfeZDkznh2vTaBFv66UOuhtest"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
