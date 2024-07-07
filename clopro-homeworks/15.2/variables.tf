###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

### Зона доступности

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

### SSH публичный

variable "metadata" {
  type        = map(string)
  default     = {
    "serial-port-enable" = "1"
    "ssh-keys" = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAYAW7jxrBt5gElaLR6x5Jcy8rgaEM6mxfCGAHswroVS root@sv-1"
  }
  description = "ssh-keygen -t ed25519"
}

### VM ресурсы


###VM1 name vars
variable "VM1_name" {
  type        = string
  default     = "nat"
  description = "VM1 name"
}
###hostname

variable "hostname_VM1_name" {
  default = "nat"
}

###yandex_compute_image VM1 vars
variable "VM1_image" {
  type        = string
  default     = "fd80mrhj8fl2oe87o4e1"
  description = "NAT image ID"
}
###VM1_resources var

variable "VM1_resources" {
  type = map(number)
  default = {
    cores          = 2
    memory         = 2
    core_fraction  = 20
 }
}

### Сеть 



variable "default_cidr" {
  type        = list(string)
  default     = ["192.168.10.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}


variable "vpc_name" {
  type        = string
  default     = "netology"
  description = "VPC network & subnet name"
}

### Бакет

variable "image_id" {
  type        = string
  default     = "https://storage.yandexcloud.net/schelokov-netology-baket/123.jpg"
}

### бАЛАНСЕР

variable "lamp-image-id" {
  default = "fd827b91d99psvq5fjit"
}

#### xnj

variable "yandex_compute_instance_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "https://cloud.yandex.com/en/docs/cli/cli-ref/managed-services/compute/instance/"
}
