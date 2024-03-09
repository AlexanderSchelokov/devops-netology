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

Сделайте autodetect конфигурации.

Сохраните необходимые шаги, запустите первую сборку master.

Поменяйте условия сборки: если сборка по ветке master, то должен происходит mvn clean deploy, иначе mvn clean test.

Для deploy будет необходимо загрузить settings.xml в набор конфигураций maven у teamcity, предварительно записав туда креды для подключения к nexus.

В pom.xml необходимо поменять ссылки на репозиторий и nexus.

Запустите сборку по master, убедитесь, что всё прошло успешно и артефакт появился в nexus.

Мигрируйте build configuration в репозиторий.

Создайте отдельную ветку feature/add_reply в репозитории.

Напишите новый метод для класса Welcomer: метод должен возвращать произвольную реплику, содержащую слово hunter.

Дополните тест для нового метода на поиск слова hunter в новой реплике.

Сделайте push всех изменений в новую ветку репозитория.

Убедитесь, что сборка самостоятельно запустилась, тесты прошли успешно.

Внесите изменения из произвольной ветки feature/add_reply в master через Merge.

Убедитесь, что нет собранного артефакта в сборке по ветке master.

Настройте конфигурацию так, чтобы она собирала .jar в артефакты сборки.

Проведите повторную сборку мастера, убедитесь, что сбора прошла успешно и артефакты собраны.

Проверьте, что конфигурация в репозитории содержит все настройки конфигурации из teamcity.

В ответе пришлите ссылку на репозиторий.

