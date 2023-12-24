resource "yandex_compute_instance" "web" {
  count = 2
  name  = "develop-web-${count.index + 1}"

  resources {
    cores         = var.instance_cores
    memory        = var.instance_memory
    core_fraction = var.instance_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = "fd8g64rcu9fq5kpfqls0"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = var.metadata
}

