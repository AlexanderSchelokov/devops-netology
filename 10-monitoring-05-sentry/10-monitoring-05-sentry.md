Задание 1

Так как Self-Hosted Sentry довольно требовательная к ресурсам система, мы будем использовать Free Сloud account.

Free Cloud account имеет ограничения:

5 000 errors;

10 000 transactions;

1 GB attachments.

Для подключения Free Cloud account:

зайдите на sentry.io;

нажмите «Try for free»;

используйте авторизацию через ваш GitHub-аккаунт;

далее следуйте инструкциям.

В качестве решения задания пришлите скриншот меню Projects.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/e69a45df-a457-49eb-9e09-50f375f19892)

---

Задание 2

Создайте python-проект и нажмите Generate sample event для генерации тестового события.

Изучите информацию, представленную в событии.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/63b797e6-092e-442a-ab2c-9f65365aaf43)

Перейдите в список событий проекта, выберите созданное вами и нажмите Resolved.

В качестве решения задание предоставьте скриншот Stack trace из этого события и список событий проекта после нажатия Resolved.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/444bc52c-624c-49e9-80dc-5ae24bddf082)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/34934882-3155-40fb-94c0-6ce64200bab5)
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/661ef2b3-2a6c-4a06-b7bb-37691a2e2e09)


---

Задание 3

Перейдите в создание правил алёртинга.

Выберите проект и создайте дефолтное правило алёртинга без настройки полей.

Снова сгенерируйте событие Generate sample event. Если всё было выполнено правильно — через некоторое время вам на почту, привязанную к GitHub-аккаунту, придёт оповещение о произошедшем событии.

Если сообщение не пришло — проверьте настройки аккаунта Sentry (например, привязанную почту), что у вас не было sample issue до того, как вы его сгенерировали, и то, что правило алёртинга выставлено по дефолту (во всех полях all). Также проверьте проект, в котором вы создаёте событие — возможно алёрт привязан к другому.

В качестве решения задания пришлите скриншот тела сообщения из оповещения на почте.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/56a3dd28-5574-4985-9d7f-0e42525ef988)


Дополнительно поэкспериментируйте с правилами алёртинга. Выбирайте разные условия отправки и создавайте sample events.
