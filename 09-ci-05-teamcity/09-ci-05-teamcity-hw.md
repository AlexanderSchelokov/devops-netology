**Подготовка к выполнению**

В Yandex Cloud создайте новый инстанс (4CPU4RAM) на основе образа jetbrains/teamcity-server.

Дождитесь запуска teamcity, выполните первоначальную настройку.

Создайте ещё один инстанс (2CPU4RAM) на основе образа jetbrains/teamcity-agent. Пропишите к нему переменную окружения SERVER_URL: "http://<teamcity_url>:8111".

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/ccb52d12-3f04-4d66-9c01-26f031b4c716)

Авторизуйте агент.
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/933f9585-490b-403e-bfd4-c7150d735a40)

Сделайте fork репозитория.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/ba968249-7222-4c19-90d4-bcc930ef3352)


Создайте VM (2CPU4RAM) и запустите playbook.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a04d3ccd-ff3d-427a-8faa-871c7614a127)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/8822c31a-c838-46f3-a374-82e56be80feb)

Основная часть

Создайте новый проект в teamcity на основе fork.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/e3a96482-13bf-44cf-a692-8d13e4735847)


Сделайте autodetect конфигурации.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a5e32a2f-9ac8-48dc-91e3-fd01bb961503)


Сохраните необходимые шаги, запустите первую сборку master.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/f2eb3f60-0bb8-4443-9b6c-2af7ea0f9893)


Поменяйте условия сборки: если сборка по ветке master, то должен происходит mvn clean deploy, иначе mvn clean test.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a6efe2f0-37f7-4c43-9257-8620dcc04c77)


Для deploy будет необходимо загрузить settings.xml в набор конфигураций maven у teamcity, предварительно записав туда креды для подключения к nexus.

В pom.xml необходимо поменять ссылки на репозиторий и nexus.

Запустите сборку по master, убедитесь, что всё прошло успешно и артефакт появился в nexus.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/d4a0dbec-b390-4554-8a18-6a3f3d704d08)


Мигрируйте build configuration в репозиторий.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/c979b3d2-c125-4578-b4dc-5e022aae93a0)


Создайте отдельную ветку feature/add_reply в репозитории.


![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/8edf5019-0c81-421b-80b7-f03108788a27)


Напишите новый метод для класса Welcomer: метод должен возвращать произвольную реплику, содержащую слово hunter.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/180f8c4b-2a51-4651-b2d8-0272e1074dfd)


Дополните тест для нового метода на поиск слова hunter в новой реплике.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/236ec222-b103-47bb-b54d-42ec16e439e6)


Сделайте push всех изменений в новую ветку репозитория.

Убедитесь, что сборка самостоятельно запустилась, тесты прошли успешно.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/32ffcffa-7871-424c-8b31-f344d3be1f10)


Внесите изменения из произвольной ветки feature/add_reply в master через Merge.


Убедитесь, что нет собранного артефакта в сборке по ветке master.

Настройте конфигурацию так, чтобы она собирала .jar в артефакты сборки.


Проведите повторную сборку мастера, убедитесь, что сбора прошла успешно и артефакты собраны.

Проверьте, что конфигурация в репозитории содержит все настройки конфигурации из teamcity.

В ответе пришлите ссылку на репозиторий.


