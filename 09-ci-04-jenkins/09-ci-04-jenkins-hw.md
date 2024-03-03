Подготовка к выполнению

Создать два VM: для jenkins-master и jenkins-agent.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/be15ca12-b04f-425f-a1e1-c5fe5d641e10)


Установить Jenkins при помощи playbook.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/60953098-288c-4396-8c59-5953501cc912)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/d16f60f4-4370-442d-8d5f-83f290cf5808)

Запустить и проверить работоспособность.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a614e6a0-0460-4958-84dd-c39b213a9069)

Сделать первоначальную настройку.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/cca0fd4f-63f6-4cb6-a18e-b1f25564b0c3)


Основная часть

Сделать Freestyle Job, который будет запускать molecule test из любого вашего репозитория с ролью.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/500af932-d017-4198-87c6-d6a7cd27d1ea)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/9320f731-2661-4abb-aff2-1bacac7d37b7)

Сделать Declarative Pipeline Job, который будет запускать molecule test из любого вашего репозитория с ролью.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/2d778e11-f75c-4ca0-917b-d37eafaf1ee4)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/dbf10ac6-7709-4411-b996-51b19c7ed6f0)


Перенести Declarative Pipeline в репозиторий в файл Jenkinsfile.

https://github.com/AlexanderSchelokov/devops-netology/blob/main/Jenkinsfile

Создать Multibranch Pipeline на запуск Jenkinsfile из репозитория.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/cec71eae-ef62-480c-b1bb-6787ed229bad)


Создать Scripted Pipeline, наполнить его скриптом из pipeline.


Внести необходимые изменения, чтобы Pipeline запускал ansible-playbook без флагов --check --diff, если не установлен параметр при запуске джобы (prod_run = True). По умолчанию параметр имеет значение False и запускает прогон с флагами --check --diff.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/352aaeb2-2760-4e5c-bc66-edf203e88626)

Проверить работоспособность, исправить ошибки, исправленный Pipeline вложить в репозиторий в файл ScriptedJenkinsfile.

Отправить ссылку на репозиторий с ролью и Declarative Pipeline и Scripted Pipeline.

Declarative Pipeline https://github.com/AlexanderSchelokov/devops-netology/blob/main/Jenkinsfile
Scripted Pipeline  https://github.com/AlexanderSchelokov/devops-netology/blob/main/ScriptedJenkinsfile


