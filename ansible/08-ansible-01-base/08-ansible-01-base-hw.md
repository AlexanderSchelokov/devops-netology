Попробуйте запустить playbook на окружении из test.yml, зафиксируйте значение, которое имеет факт some_fact для указанного хоста при выполнении playbook.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a756d997-2f41-4b26-bf98-fb27848cae69)

Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на all default fact.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/01a83a5a-03d8-4ad8-80a8-0ef7b37f45e0)

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/5a8b4532-13ae-4fa9-a5b7-49ae3694bd09)

Воспользуйтесь подготовленным (используется docker) или создайте собственное окружение для проведения дальнейших испытаний.

Проведите запуск playbook на окружении из prod.yml. Зафиксируйте полученные значения some_fact для каждого из managed host.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/a334497e-f5c9-4e04-b069-c05403383da1)

Добавьте факты в group_vars каждой из групп хостов так, чтобы для some_fact получились значения: для deb — deb default fact, для el — el default fact.

Повторите запуск playbook на окружении prod.yml. Убедитесь, что выдаются корректные значения для всех хостов.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/ee6e6416-9e87-4676-b653-3b13f6160c9f)

При помощи ansible-vault зашифруйте факты в group_vars/deb и group_vars/el с паролем netology.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/2fd1838f-67cb-4905-87fb-d486677266d8)

Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь в работоспособности.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/286b8221-f08e-41ac-bc52-0ddb097ce35b)

Посмотрите при помощи ansible-doc список плагинов для подключения. Выберите подходящий для работы на control node.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/835be63d-9f38-4b23-be89-65bf4d156fd4)


В prod.yml добавьте новую группу хостов с именем local, в ней разместите localhost с необходимым типом подключения.

Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь, что факты some_fact для каждого из хостов определены из верных group_vars.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/881bf1c5-1d62-4dc6-a384-e8c03ee2c90a)


