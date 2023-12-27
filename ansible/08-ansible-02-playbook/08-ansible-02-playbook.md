Подготовьте свой inventory-файл prod.yml.

Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает vector. Конфигурация vector должна деплоиться через template файл jinja2. От вас не требуется использовать все возможности шаблонизатора, просто вставьте стандартный конфиг в template файл. Информация по шаблонам по ссылке. не забудьте сделать handler на перезапуск vector в случае изменения конфигурации!

При создании tasks рекомендую использовать модули: get_url, template, unarchive, file.

Tasks должны: скачать дистрибутив нужной версии, выполнить распаковку в выбранную директорию, установить vector.

Запустите ansible-lint site.yml и исправьте ошибки, если они есть.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/78f75a29-c885-4364-8207-55043544f557)

Попробуйте запустить playbook на этом окружении с флагом --check.

Ошибка из за того, что файл не был скачан и его нет для распоковки в текущей директории

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/8d98945d-32d6-4211-933c-c1e8dc7f37e9)

Запустите playbook на prod.yml окружении с флагом --diff. Убедитесь, что изменения на системе произведены.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a42ca0cb-9ed3-457d-9352-86cdabb88edc)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/e8f8d6e8-14d1-48d2-9c65-8a834b8e1e61)


Повторно запустите playbook с флагом --diff и убедитесь, что playbook идемпотентен.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/215e50ae-111a-4e0d-8343-f92b8d395f2f)

Описание playbook :

playbook состоит из двух основных частей:

1- Установка Clickhouse:

Настраивает сервер Clickhouse на хостах, указанных в inventory как clickhouse.

Он скачивает и устанавливает пакеты Clickhouse, запускает службу Clickhouse и создает базу данных logs.

В случае ошибки при получении пакетов Clickhouse, он пытается скачать пакет clickhouse-common-static. (но этот шаг почему то не работает, не смог радобратся)

Параметры playbook включают clickhouse_version и clickhouse_packages, которые,  определены в переменных.

Теги включают block, rescue, become, notify, meta, register, failed_when, changed_when.

2- Установка и настройка Vector:

Настраивает Vector на хостах, указанных в inventory как vector.

Он скачивает и устанавливает Vector, а затем развертывает конфигурацию Vector из шаблона vector.j2.

Параметр playbook vector_version вероятно определен в переменных.

Теги включают become, notify.

Используются  модули Ansible, такие как get_url, yum, service, systemd, command и template. Эти модули позволяют playbook выполнять различные задачи, такие как загрузка файлов из Интернета, установка пакетов, управление службами и работа с шаблонами.

Используется  функция become: true для выполнения задач от имени суперпользователя, что требуется для установки пакетов и управления службами.

playbook использует обработчики (handlers), которые позволяют выполнить определенные задачи (например, перезапуск службы) только в том случае, если предыдущая задача привела к изменению состояния системы. 



