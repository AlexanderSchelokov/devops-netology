Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает LightHouse.

При создании tasks рекомендую использовать модули: get_url, template, yum, apt.

Tasks должны: скачать статику LightHouse, установить Nginx или любой другой веб-сервер, настроить его конфиг для открытия LightHouse, запустить веб-сервер.

Подготовьте свой inventory-файл prod.yml.

Запустите ansible-lint site.yml и исправьте ошибки, если они есть.

![Снимок1](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/64f2157b-6f8d-4599-9c34-40fe186b69c9)

![Снимок2](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/0d5f17ed-1cc2-4e9c-9424-b2450de04ab2)

![Снимок3](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/c14cc803-89aa-430a-adce-606d0464ad97)

Попробуйте запустить playbook на этом окружении с флагом --check.

Дальнейший запуск не проходит т.к. RMP файл не скачен и нечего распоковывать.

![Снимок4](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/c516cbd8-664f-4297-81a6-dd1583c25894)

Запустите playbook на prod.yml окружении с флагом --diff. Убедитесь, что изменения на системе произведены.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/ff7d4f90-cf40-484d-9ab8-86bf9635629f)

Повторно запустите playbook с флагом --diff и убедитесь, что playbook идемпотентен.

![Снимок5](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/1d1e7391-986c-46ee-845d-ab200b314933)

Описание:

Playbook состоит из трех основных частей. Первые две части описаны в https://github.com/AlexanderSchelokov/devops-netology/blob/main/ansible/08-ansible-02-playbook/08-ansible-02-playbook.md

В третей части Playbook:

Устанавливаются  необходимые пакеты (в данном случае, git) на целевой машине.

Клонируем репозиторий LightHouse с GitHub в указанное место на целевой машине.

Устанавливает права доступа к директории LightHouse.

Устанавливает репозиторий EPEL.

Устанавливает Nginx.

Разворачивает конфигурацию Nginx для LightHouse из шаблона.

Убеждается, что Nginx запущен.

Теги  отсутствуют.

Обработчик (handler):

Restart nginx service: перезапускает службу Nginx после развертывания конфигурации. Обработчики запускаются в конце выполнения playbook, и только в том случае, если соответствующая задача сообщила об изменениях.
