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

###VM2 name vars
variable "VM2_name" {
  type        = string
  default     = "public"
  description = "VM2 name"
}
###hostname

variable "hostname_VM2_name" {
  default = "public"
}
####yandex_compute_image VM2 vars
variable "VM2_image" {
  type        = string
  default     = "fd8pqclrbi85ektgehlf"
  description = "public image ID"
}
###VM2_resources var

variable "VM2_resources" {
  type = map(number)
  default = {
    cores          = 2
    memory         = 2
    core_fraction  = 20
 }
}

###VM3 name vars
variable "VM3_name" {
  type        = string
  default     = "private"
  description = "VM3 name"
}
###hostname

variable "hostname_VM3_name" {
  default = "private"
}
###yandex_compute_image VM3 vars
variable "VM3_image" {
  type        = string
  default     = "fd8pqclrbi85ektgehlf"
  description = "private image ID"
}
###VM3_resources var

variable "VM3_resources" {
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

### Private

variable "default_cidr_private" {
  type        = list(string)
  default     = ["192.168.20.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
