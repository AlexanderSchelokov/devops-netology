Задача 1
---

Создайте собственный образ любой операционной системы (например, debian-11) с помощью Packer версии 1.7.0 . Перед выполнением задания изучите (инструкцию!!!). В инструкции указана минимальная версия 1.5, но нужно использовать 1.7, так как там есть нужный нам функционал

Чтобы получить зачёт, вам нужно предоставить скриншот страницы с созданным образом из личного кабинета YandexCloud.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/5387493d-9fed-438f-85b7-2c8f46f15aef)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/6034c528-74d8-4dc7-85c2-22366ffe2fa0)

***

Задача 2
---

2.1. Создайте вашу первую виртуальную машину в YandexCloud с помощью web-интерфейса YandexCloud.

2.2.* (Необязательное задание)
Создайте вашу первую виртуальную машину в YandexCloud с помощью Terraform (вместо использования веб-интерфейса YandexCloud). Используйте Terraform-код в директории (src/terraform).

Чтобы получить зачёт, вам нужно предоставить вывод команды terraform apply и страницы свойств, созданной ВМ из личного кабинета YandexCloud.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/51cd718d-080a-44cc-931f-ad1619445147)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/801a6d46-68c5-4cb6-9c6b-c9e679187efc)


***

Задача 3
---

С помощью Ansible и Docker Compose разверните на виртуальной машине из предыдущего задания систему мониторинга на основе Prometheus/Grafana. Используйте Ansible-код в директории (src/ansible).

Чтобы получить зачёт, вам нужно предоставить вывод команды "docker ps" , все контейнеры, описанные в docker-compose, должны быть в статусе "Up".

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/ec6e3439-6c96-4278-83f7-491169227b67)

***

Задача 4
---

Откройте веб-браузер, зайдите на страницу http://<внешний_ip_адрес_вашей_ВМ>:3000.

Используйте для авторизации логин и пароль из .env-file.

Изучите доступный интерфейс, найдите в интерфейсе автоматически созданные docker-compose-панели с графиками(dashboards).

Подождите 5-10 минут, чтобы система мониторинга успела накопить данные.

Чтобы получить зачёт, предоставьте:

скриншот работающего веб-интерфейса Grafana с текущими метриками, как на примере ниже.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/d2bf86bc-ad18-4392-8e4b-b3254daf8946)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/9a0b05dd-88fe-4cf0-8a6d-270110d72af3)




