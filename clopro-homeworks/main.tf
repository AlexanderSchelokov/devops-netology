# Создание NAT-инстанса VM1
resource "yandex_compute_instance" "nat_instance" {
  name = var.VM1_name
  hostname = var.hostname_VM1_name
  zone = var.default_zone

  boot_disk {
    initialize_params {
      image_id = var.VM1_image
    }
  }

  resources {
    cores   = var.VM1_resources.cores
    memory  = var.VM1_resources.memory
  }

  network_interface {
    subnet_id       = yandex_vpc_subnet.public_subnet.id
    nat             = true
    ip_address      = "192.168.10.254"
  }
  metadata = {
    "ssh-keys" = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }
}
# Создание публичной виртуальной машины VM2
resource "yandex_compute_instance" "public_instance" {
  name        = var.VM2_name
  hostname = var.hostname_VM2_name
  zone        = var.default_zone

  boot_disk {
    initialize_params {
      image_id = var.VM2_image
    }
  }

  resources {
    cores   = var.VM2_resources.cores
    memory  = var.VM2_resources.memory
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.public_subnet.id
    nat       = true
  }
  scheduling_policy {
    preemptible = true
  }

  metadata = {
    "ssh-keys" = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }
}
# Создание приватной виртуальной машины
resource "yandex_compute_instance" "private_instance" {
  name = var.VM3_name
  hostname = var.hostname_VM3_name
  zone = var.default_zone

  boot_disk {
    initialize_params {
      image_id = var.VM3_image
    }
  }

  resources {
    cores   = var.VM3_resources.cores
    memory  = var.VM3_resources.memory
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.private_subnet.id
  }

  metadata = {
    "ssh-keys" = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }
}
# Создание сети
resource "yandex_vpc_network" "my_network" {
  name = var.vpc_name
  folder_id = var.folder_id
}
# Создание публичной подсети
resource "yandex_vpc_subnet" "public_subnet" {
  name           = "public"
  network_id     = yandex_vpc_network.my_network.id
  v4_cidr_blocks = var.default_cidr
}
# Создание приватной подсети и привязка таблицы маршрутизации
resource "yandex_vpc_subnet" "private_subnet" {
  name           = "private"
  network_id     = yandex_vpc_network.my_network.id
  v4_cidr_blocks = var.default_cidr_private
  route_table_id = yandex_vpc_route_table.privat-route.id
}

# настройка маршрутизации
resource "yandex_vpc_route_table" "privat-route" {
  name       = "private-rout"
  network_id = yandex_vpc_network.my_network.id
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = "192.168.10.254"
  }
}
