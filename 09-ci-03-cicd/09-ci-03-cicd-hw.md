Подготовка к выполнению

Создайте два VM в Yandex Cloud с параметрами: 2CPU 4RAM Centos7 (остальное по минимальным требованиям).

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/1a86390e-d613-4dd2-ba10-9fe56d625308)


Пропишите в inventory playbook созданные хосты.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/9600d48d-baae-4550-bb48-ba178114296f)

Добавьте в files файл со своим публичным ключом (id_rsa.pub). Если ключ называется иначе — найдите таску в плейбуке, которая использует id_rsa.pub имя, и исправьте на своё.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/58873913-2011-40e3-bdc0-d42b5bd3f77c)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/4c66ca40-b86d-4b2a-8d1a-af0c96539063)

Запустите playbook, ожидайте успешного завершения.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/eccd59ab-ab37-4a32-ae04-80733918a781)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/4b60828e-7709-4090-aa69-3cba2922ee21)
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/26cd1ac3-a66b-4b9c-8e38-c96a0fbd43f7)


![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/e17db917-b24a-4287-83d1-45a3d61be9dd)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/32a57bf4-1ea4-49ad-a3a1-d647722e4710)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/845f73a0-7abe-4691-80e7-3f06cb98ed92)

Проверьте готовность SonarQube через браузер.

Зашел по SSH на сервер и внес дополнения

Установил firewalld

sudo yum install -y firewalld

Запуск firewalld

sudo systemctl start firewalld

Включение firewalld при загрузке

sudo systemctl enable firewalld

Открытие порта 9000

sudo firewall-cmd --zone=public --add-port=9000/tcp --permanent

sudo firewall-cmd --reload


![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/b17ee673-8475-4b7e-8f7d-73fa458e23a4)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/173c356b-cd06-4946-80b9-34934aa0b274)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/08d5c8bf-095f-454c-b88c-b416797f491b)

Зайдите под admin\admin, поменяйте пароль на свой.


Проверьте готовность Nexus через бразуер.

Подключитесь под admin\admin123, поменяйте пароль, сохраните анонимный доступ.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/8524e658-20a2-4f8a-be52-63f3562556ad)

***

Знакомоство с SonarQube

Основная часть

Создайте новый проект, название произвольное.

Скачайте пакет sonar-scanner, который вам предлагает скачать SonarQube.

Сделайте так, чтобы binary был доступен через вызов в shell (или поменяйте переменную PATH, или любой другой, удобный вам способ).

Проверьте sonar-scanner --version.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/cdd4d4ed-fcbd-4d39-8e10-071002ebd407)

Запустите анализатор против кода из директории example с дополнительным ключом -Dsonar.coverage.exclusions=fail.py.

Посмотрите результат в интерфейсе.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/3710ed43-3920-4909-ae4b-69bff90c6605)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/186f627c-e5b6-4692-b31f-09b5a5e4163e)


Исправьте ошибки, которые он выявил, включая warnings.

Запустите анализатор повторно — проверьте, что QG пройдены успешно.

Сделайте скриншот успешного прохождения анализа, приложите к решению ДЗ.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/80db84ba-dbb4-4f8f-8357-3a3735a3528e)

***

Знакомство с Nexus

Основная часть

В репозиторий maven-public загрузите артефакт с GAV-параметрами:

groupId: netology;

artifactId: java;

version: 8_282;

classifier: distrib;

type: tar.gz.

В него же загрузите такой же артефакт, но с version: 8_102.

Проверьте, что все файлы загрузились успешно.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a883497e-975d-49ab-85b3-efdf348462ff)

В ответе пришлите файл maven-metadata.xml для этого артефекта.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/4faed672-b793-4a69-b61a-d3f19eb32fa8)

***

Знакомство с Maven

Подготовка к выполнению

Скачайте дистрибутив с maven.

Разархивируйте, сделайте так, чтобы binary был доступен через вызов в shell (или поменяйте переменную PATH, или любой другой, удобный вам способ).

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/6ba13adf-98ea-4d66-a5dc-0f953cdaf15a)

Удалите из apache-maven-<version>/conf/settings.xml упоминание о правиле, отвергающем HTTP- соединение — раздел mirrors —> id: my-repository-http-unblocker.

Проверьте mvn --version.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/1e40978e-d1a2-4761-baef-6a72a60f5219)

Заберите директорию mvn с pom.

Основная часть

Поменяйте в pom.xml блок с зависимостями под ваш артефакт из первого пункта задания для Nexus (java с версией 8_282).

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/2405541d-d513-47df-87a8-b49449e82b6e)


Запустите команду mvn package в директории с pom.xml, ожидайте успешного окончания.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/eacf8387-d051-4a95-a7ca-3665ec365e78)


Проверьте директорию ~/.m2/repository/, найдите ваш артефакт.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/3e1bce8b-4421-4e8f-a4ad-21a23212ed46)


В ответе пришлите исправленный файл pom.xml.
