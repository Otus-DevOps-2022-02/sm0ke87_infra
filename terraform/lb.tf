resource "yandex_alb_load_balancer" "test-balancer-app" {
  name        = "my-load-balancer"

  network_id  = var.network_id

  allocation_policy {
    location {
      zone_id   = "ru-central1-a"
      subnet_id = var.subnet_id
    }
  }

  listener {
    name = "my-listener"
    endpoint {
      address {
          external_ipv4_address {
        }
      }
      ports = [ 80 ]
    }
    http {
      handler {
        http_router_id = yandex_alb_http_router.test-router-app.id
      }
    }
  }
}
resource "yandex_alb_http_router" "test-router-app" {
  name      = "my-http-router"
}

resource "yandex_alb_backend_group" "test-backend-group-app" {
  name      = "my-backend-group"

  http_backend {
    name = "test-http-backend-app"
    weight = 1
    port = 9292
    target_group_ids = yandex_alb_target_group.test-target-group-app.*.id
    load_balancing_config {
      panic_threshold = 50
    }
    healthcheck {
      timeout = "1s"
      interval = "1s"
      http_healthcheck {
        path  = "/"
      }
    }
  }
}
resource "yandex_alb_target_group" "test-target-group-app" {
  name      = "my-target-group"

  target {
    subnet_id = var.subnet_id
    ip_address = yandex_compute_instance.app.network_interface.0.ip_address
  }
}
