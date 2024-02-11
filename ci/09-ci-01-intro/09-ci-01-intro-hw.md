Основная часть

Необходимо создать собственные workflow для двух типов задач: bug и остальные типы задач. Задачи типа bug должны проходить жизненный цикл:

Open -> On reproduce.

On reproduce -> Open, Done reproduce.

Done reproduce -> On fix.

On fix -> On reproduce, Done fix.

Done fix -> On test.

On test -> On fix, Done.

Done -> Closed, Open.

Остальные задачи должны проходить по упрощённому workflow:

Open -> On develop.

On develop -> Open, Done develop.

Done develop -> On test.

On test -> On develop, Done.

Done -> Closed, Open.

Что нужно сделать

Создайте задачу с типом bug, попытайтесь провести его по всему workflow до Done.

Создайте задачу с типом epic, к ней привяжите несколько задач с типом task, проведите их по всему workflow до Done.

При проведении обеих задач по статусам используйте kanban.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/4766857a-e9b0-4679-8c67-fb3db8db757f)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/c86eacbf-7d22-4b1e-aaaa-bdc20b6f59e7)


Верните задачи в статус Open.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/33963cbd-95e8-48f1-a576-aa4cc39f69eb)

Перейдите в Scrum, запланируйте новый спринт, состоящий из задач эпика и одного бага, стартуйте спринт, проведите задачи до состояния Closed. Закройте спринт.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/535e9c59-bb12-464d-ab4d-a1f60ed7f5b0)


Если всё отработалось в рамках ожидания — выгрузите схемы workflow для импорта в XML. Файлы с workflow и скриншоты workflow приложите к решению задания.
