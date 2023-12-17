output "network_id" {
  value = yandex_vpc_network.network.id
  description = "The ID of the network"
}
output "subnet_id" {
  value = yandex_vpc_subnet.subnet.id
}

