Задача 1
---
Используя Docker, поднимите инстанс PostgreSQL (версию 12) c 2 volume, в который будут складываться данные БД и бэкапы.

Приведите получившуюся команду или docker-compose-манифест.

![Снимок110](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/55facef9-1d68-407b-aaf5-43e8b4808665)

![Снимок111](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/f64ecbb3-a530-4e8f-8316-0862da8cfc7b)
***

Задача 2
---
В БД из задачи 1:

создайте пользователя test-admin-user и БД test_db;

в БД test_db создайте таблицу orders и clients (спeцификация таблиц ниже);

предоставьте привилегии на все операции пользователю test-admin-user на таблицы БД test_db;

создайте пользователя test-simple-user;

предоставьте пользователю test-simple-user права на SELECT/INSERT/UPDATE/DELETE этих таблиц БД test_db.

Таблица orders:

id (serial primary key);

наименование (string);

цена (integer).

Таблица clients:

id (serial primary key);

фамилия (string);

страна проживания (string, index);

заказ (foreign key orders).

Приведите:

итоговый список БД после выполнения пунктов выше;

описание таблиц (describe);

SQL-запрос для выдачи списка пользователей с правами над таблицами test_db;

список пользователей с правами над таблицами test_db.
![Снимок111](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/d49b7d64-5be6-41e4-9aca-4940df7a7359)

![Снимок112](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a237349a-6b98-42b3-9f45-8b86ad6ca96a)
***

Задача 3
---
Используя SQL-синтаксис, наполните таблицы следующими тестовыми данными:

Таблица orders

Наименование	цена
Шоколад	10

Принтер	3000

Книга	500

Монитор	7000

Гитара	4000

Таблица clients

ФИО	Страна проживания

Иванов Иван Иванович	USA

Петров Петр Петрович	Canada

Иоганн Себастьян Бах	Japan

Ронни Джеймс Дио	Russia

Ritchie Blackmore	Russia

Используя SQL-синтаксис:

вычислите количество записей для каждой таблицы.

Приведите в ответе:

- запросы,
- 
- результаты их выполнения.

![Снимок114](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/21f9ea1d-2fb9-4ded-abcc-729c2b81106c)

***

Задача 4
---

Часть пользователей из таблицы clients решили оформить заказы из таблицы orders.

Используя foreign keys, свяжите записи из таблиц, согласно таблице:

ФИО	Заказ

Иванов Иван Иванович	Книга

Петров Петр Петрович	Монитор

Иоганн Себастьян Бах	Гитара

Приведите SQL-запросы для выполнения этих операций.

Приведите SQL-запрос для выдачи всех пользователей, которые совершили заказ, а также вывод этого запроса.

Подсказка: используйте директиву UPDATE.

![Снимок115](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/50437ab2-23eb-437d-815a-117e65d95830)

***

Задача 5
---
Получите полную информацию по выполнению запроса выдачи всех пользователей из задачи 4 (используя директиву EXPLAIN).

Приведите получившийся результат и объясните, что значат полученные значения.

![Снимок116](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/2d4895f2-d70d-4438-a35e-31a120a82f75)


Hash Join (cost=37.00..57.24 rows=810 width=72): Это главная операция, которую PostgreSQL планирует выполнить - соединение хеш-таблиц. 
Значения cost указывают на оценочную стоимость выполнения операции (чем меньше, тем лучше). Первое число (37.00) - это начальная стоимость до того, как будут возвращены какие-либо строки, второе число (57.24) - это общая стоимость после возврата всех строк. 
Rows=810 - это оценка количества строк, которые будут возвращены, а width=72 - средний размер строки в байтах.

Hash Cond: (c."заказ" = o.id): Это условие соединения, которое используется для соединения таблиц clients и orders.

Seq Scan on clients c  (cost=0.00..18.10 rows=810 width=72): PostgreSQL планирует выполнить последовательное сканирование (Seq Scan) таблицы clients. Это означает, что он просмотрит каждую строку таблицы.

Hash  (cost=22.00..22.00 rows=1200 width=4) -> Seq Scan on orders o  (cost=0.00..22.00 rows=1200 width=4): PostgreSQL планирует создать хеш-таблицу из таблицы orders, 
используя последовательное сканирование, и затем использовать эту хеш-таблицу для выполнения соединения хеш-таблиц.

Задача 6
---
Создайте бэкап БД test_db и поместите его в volume, предназначенный для бэкапов (см. задачу 1).

Остановите контейнер с PostgreSQL, но не удаляйте volumes.

Поднимите новый пустой контейнер с PostgreSQL.

Восстановите БД test_db в новом контейнере.

Приведите список операций, который вы применяли для бэкапа данных и восстановления.

![Снимок117](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/2da8c18a-0309-4f6b-a442-f7b7319607c8)
![Снимок118](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/dd3964d3-15d5-4112-ab75-c39ca1ff9f0a)
![Снимок119](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/5662e30c-c5d9-45b7-ab7d-4abf6f30499f)
Тк. данные роли не созданы в новой базе выдал ошибку.
![Снимок120](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/c3e0d06c-54e1-4b65-af46-58f5a1e07cda)

