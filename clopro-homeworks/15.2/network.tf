# Создание сети
resource "yandex_vpc_network" "netology" {
  name        = var.vpc_name
}

# Создание подсети
resource "yandex_vpc_subnet" "public-subnet" {
  name           = "public"
  zone           = var.default_zone
  network_id     = yandex_vpc_network.netology.id
  v4_cidr_blocks = var.default_cidr
}

# Создание сетевого балансировщика
resource "yandex_lb_network_load_balancer" "load-balancer" {
  name = "network-load-balancer"

  listener {
    name = "lb-listener"
    port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_compute_instance_group.lamp-group.load_balancer.0.target_group_id

    healthcheck {
      name = "http"
      http_options {
        port = 80
        path = "/index.html"
      }
    }
  }
  depends_on = [
    yandex_compute_instance_group.lamp-group
]
}