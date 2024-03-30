Задание 1

Вам необходимо поднять в докере и связать между собой:

elasticsearch (hot и warm ноды);

logstash;

kibana;

filebeat.

Logstash следует сконфигурировать для приёма по tcp json-сообщений.

Filebeat следует сконфигурировать для отправки логов docker вашей системы в logstash.

В директории help находится манифест docker-compose и конфигурации filebeat/logstash для быстрого выполнения этого задания.

Результатом выполнения задания должны быть:

скриншот docker ps через 5 минут после старта всех контейнеров (их должно быть 5);

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/e6d4bcc3-cba5-4a54-8dd3-758e05d3274e)


скриншот интерфейса kibana;

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/b378af56-725b-4aad-b5cc-9897736e9508)


docker-compose манифест (если вы не использовали директорию help);

ваши yml-конфигурации для стека (если вы не использовали директорию help).
 
---

Задание 2

Перейдите в меню создания index-patterns в kibana и создайте несколько index-patterns из имеющихся.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/4b866a4c-e273-43fd-9911-a65a521e557e)


Перейдите в меню просмотра логов в kibana (Discover) и самостоятельно изучите, как отображаются логи и как производить поиск по логам.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/752c4295-fd0a-47a7-ab5f-7dba69447acd)


