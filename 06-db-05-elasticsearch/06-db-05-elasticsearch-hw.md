Задача 1
---
В этом задании вы потренируетесь в:

установке Elasticsearch,

первоначальном конфигурировании Elasticsearch,

запуске Elasticsearch в Docker.

Используя Docker-образ centos:7 как базовый и документацию по установке и запуску Elastcisearch:

составьте Dockerfile-манифест для Elasticsearch,

соберите Docker-образ и сделайте push в ваш docker.io-репозиторий,

запустите контейнер из получившегося образа и выполните запрос пути / c хост-машины.

Требования к elasticsearch.yml:

данные path должны сохраняться в /var/lib,

имя ноды должно быть netology_test.

В ответе приведите:

текст Dockerfile-манифеста,
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/22467409-2bcf-4596-be6e-8fb576894437)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/2fe94dda-39e2-4a23-9cfa-fab5e6f6a217)


ссылку на образ в репозитории dockerhub,

https://hub.docker.com/repository/docker/146587/elasticsearch/general

ответ Elasticsearch на запрос пути / в json-виде.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/e23bd5be-0e4a-4252-aae8-3c958d82fffb)


Подсказки:

возможно, вам понадобится установка пакета perl-Digest-SHA для корректной работы пакета shasum,

при сетевых проблемах внимательно изучите кластерные и сетевые настройки в elasticsearch.yml,

при некоторых проблемах вам поможет Docker-директива ulimit,

Elasticsearch в логах обычно описывает проблему и пути её решения.

Далее мы будем работать с этим экземпляром Elasticsearch.

***

Задача 2
---

В этом задании вы научитесь:

создавать и удалять индексы,

изучать состояние кластера,

обосновывать причину деградации доступности данных.

Ознакомьтесь с документацией и добавьте в Elasticsearch 3 индекса в соответствии с таблицей:

Имя	Количество реплик	Количество шард

ind-1	0	1

ind-2	1	2

ind-3	2	4

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/757c0b3a-1a44-4936-94a3-c6665167daf1)

Получите список индексов и их статусов, используя API, и приведите в ответе на задание.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/edd87814-3831-4b28-85ad-33d84366a511)


Получите состояние кластера Elasticsearch, используя API.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/568151a6-0849-4893-b5d4-eee21dda1ed8)


Как вы думаете, почему часть индексов и кластер находятся в состоянии yellow?
Rоличество реплик больше, чем количество узлов. Elasticsearch не будет назначать несколько реплик одного и того же шарда на один и тот же узел, если нет достаточного количества узлов для реплик состояние кластера будет “yellow”.

Удалите все индексы.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/935a064e-a0d4-441f-996a-7f6948cc7afe)


Важно

При проектировании кластера Elasticsearch нужно корректно рассчитывать количество реплик и шард, иначе возможна потеря данных индексов, вплоть до полной, при деградации системы.
***

Задача 3
---

В этом задании вы научитесь:

создавать бэкапы данных,

восстанавливать индексы из бэкапов.

Создайте директорию {путь до корневой директории с Elasticsearch в образе}/snapshots.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/607b6f51-5777-4c7d-be9b-0f6766c79aaa)

Используя API, зарегистрируйте эту директорию как snapshot repository c именем netology_backup.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/b837c575-b30e-4642-8c6f-ceb4232d6011)

Приведите в ответе запрос API и результат вызова API для создания репозитория.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/c6ca81bc-a4ab-47dd-b1fb-cf614ed5da50)


Создайте индекс test с 0 реплик и 1 шардом и приведите в ответе список индексов.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/9d1e8b6c-9bfc-47ef-a47e-fffb638a7dbf)

Создайте snapshot состояния кластера Elasticsearch.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/f8719a70-e229-4db4-a91a-742a4ae38241)

Приведите в ответе список файлов в директории со snapshot.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/84c7e4a5-2e68-405f-9c1f-e830556044a5)

Удалите индекс test и создайте индекс test-2. Приведите в ответе список индексов.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/13e034c9-5630-4b7b-bd94-25124fedcc8e)
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/3929e391-3a5a-40b5-9995-d7616f82607a)
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/244e8d53-59c8-46ad-9dec-a035b0da2773)

Восстановите состояние кластера Elasticsearch из snapshot, созданного ранее.

Приведите в ответе запрос к API восстановления и итоговый список индексов.
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/d3231fb4-9307-4d67-8088-66724772f3b6)

***
