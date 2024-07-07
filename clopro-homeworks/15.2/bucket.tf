### Создание бакета с использованием ключа
resource "yandex_storage_bucket" "netology-bucket" {
  access_key            = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key            = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket                = "schelokov-netology-baket"
  acl                   = "public-read"
  force_destroy = "true"
  }
### Добавление картинки в баккет
resource "yandex_storage_object" "image-object" {
    access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
    secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
    bucket = "schelokov-netology-baket"
    key = "123.jpg"
    source = "data/123.jpg"
    acl    = "public-read"
    depends_on = [yandex_storage_bucket.netology-bucket]
}

