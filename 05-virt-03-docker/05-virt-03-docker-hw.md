Задача 1
---
Сценарий выполнения задачи:

создайте свой репозиторий на https://hub.docker.com;

выберите любой образ, который содержит веб-сервер Nginx;

создайте свой fork образа;

реализуйте функциональность: запуск веб-сервера в фоне с индекс-страницей, содержащей HTML-код.

Опубликуйте созданный fork в своём репозитории и предоставьте ответ в виде ссылки на https://hub.docker.com/username_repo.

**Ответ**

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/00494c3e-1bcc-4bc9-bd3d-6869a5f0f935)

https://hub.docker.com/repository/docker/146587/repo/general

***

Задача 2
---

Посмотрите на сценарий ниже и ответьте на вопрос: «Подходит ли в этом сценарии использование Docker-контейнеров или лучше подойдёт виртуальная машина, физическая машина? Может быть, возможны разные варианты?»

Детально опишите и обоснуйте свой выбор.

--

Сценарий:

высоконагруженное монолитное Java веб-приложение;

Nodejs веб-приложение;

мобильное приложение c версиями для Android и iOS;

шина данных на базе Apache Kafka;

Elasticsearch-кластер для реализации логирования продуктивного веб-приложения — три ноды elasticsearch, два logstash и две ноды kibana;

мониторинг-стек на базе Prometheus и Grafana;

MongoDB как основное хранилище данных для Java-приложения;

Gitlab-сервер для реализации CI/CD-процессов и приватный (закрытый) Docker Registry.

**Ответ**

Высоконагруженное монолитное Java веб-приложение: Здесь может быть использована как виртуальная машина, так и физическая машина, в зависимости от требований к производительности и нагрузке. Если требуется максимальная производительность и низкая задержка, физическая машина может быть лучшим выбором. Однако, VM предлагает большую гибкость и легкость масштабирования.

Node.js веб-приложение: Docker-контейнеры идеально подходят для таких приложений, поскольку они легкие, портативные и обеспечивают изоляцию зависимостей.

Мобильное приложение c версиями для Android и iOS: Это не связано с выбором между Docker, VM и физическими машинами, поскольку мобильные приложения развертываются на мобильных устройствах.

Шина данных на базе Apache Kafka: Kafka обычно требует высокой пропускной способности диска и сети, поэтому его часто развертывают на физических машинах или виртуальных машинах. С правильной настройкой, Kafka также может быть развернут в Docker.

Elasticsearch-кластер и мониторинг-стек на базе Prometheus и Grafana: Эти сервисы хорошо работают в Docker-контейнерах, что облегчает их развертывание и масштабирование.

MongoDB: MongoDB может быть развернута в Docker для разработки и тестирования, но для продакшн-среды лучше использовать VM или физическую машину для лучшей производительности и надежности.

Gitlab-сервер и Docker Registry: Эти сервисы также могут быть развернуты в Docker-контейнерах для упрощения управления и масштабирования.

Кроме того, в некоторых случаях может быть целесообразно использовать комбинацию всех трех. Например,  запустить Docker-контейнеры внутри виртуальных машин на физическом сервере для комбинирования преимуществ каждого подхода.


Задача 3
---

Запустите первый контейнер из образа centos c любым тегом в фоновом режиме, подключив папку /data из текущей рабочей директории на хостовой машине в /data контейнера.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/9a50fcd7-faa7-40c1-a49e-b8ae18c9b242)

Запустите второй контейнер из образа debian в фоновом режиме, подключив папку /data из текущей рабочей директории на хостовой машине в /data контейнера.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/1f9189cf-1023-4e3d-80e3-8215b11fbd17)


Подключитесь к первому контейнеру с помощью docker exec и создайте текстовый файл любого содержания в /data.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/5e5c939f-8244-4f94-8958-035b27f0d901)


Добавьте ещё один файл в папку /data на хостовой машине.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/46ae09e6-cba1-4fe8-8af7-7f9dd01fb733)


Подключитесь во второй контейнер и отобразите листинг и содержание файлов в /data контейнера.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/43f352ad-b1ee-4c53-9a99-30658a2ec3c0)

***
