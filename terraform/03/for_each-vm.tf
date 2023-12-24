variable "each_vm" {
  type = list(object({ vm_name=string, cpu=number, ram=number, disk=number }))
  default = [
    {
      vm_name = "main"
      cpu = 2
      ram = 4
      disk = 100
    },
    {
      vm_name = "replica"
      cpu = 2
      ram = 2
      disk = 50
    }
  ]
}

resource "yandex_compute_instance" "db" {
  for_each = { for idx, vm in var.each_vm : idx => vm }

  name = each.value.vm_name
  resources {
    cores  = each.value.cpu
    memory = each.value.ram
  }

  boot_disk {
    initialize_params {
      image_id = "fd8g64rcu9fq5kpfqls0"
      size     = each.value.disk
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = var.metadata
}

