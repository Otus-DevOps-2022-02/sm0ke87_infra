output "external_ip_adress_app" {
  value = yandex_compute_instance.db.network_interface.0.nat_ip_address
}
output "internal_ip_adress_db" {
  value = yandex_compute_instance.db.network_interface.0.ip_address
}
