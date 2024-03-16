Задание 1

Используя директорию help внутри этого домашнего задания, запустите связку prometheus-grafana.

Зайдите в веб-интерфейс grafana, используя авторизационные данные, указанные в манифесте docker-compose.

Подключите поднятый вами prometheus, как источник данных.

Решение домашнего задания — скриншот веб-интерфейса grafana со списком подключенных Datasource.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/b8889693-1dbc-4d37-94c9-a438269883cb)


Задание 2

Изучите самостоятельно ресурсы:

PromQL tutorial for beginners and humans.

Understanding Machine CPU usage.

Introduction to PromQL, the Prometheus query language.

Создайте Dashboard и в ней создайте Panels:

утилизация CPU для nodeexporter (в процентах, 100-idle);

100 -(avg by (instance) (rate(node_cpu_seconds_total{job="nodeexporter",mode="idle"}[1m])) * 100)

CPULA 1/5/15;
node_load1{instance="nodeexporter:9100", job="nodeexporter"}

node_load5{instance="nodeexporter:9100", job="nodeexporter"}

node_load15{instance="nodeexporter:9100", job="nodeexporter"}

количество свободной оперативной памяти;

node_memory_MemFree_bytes{instance="nodeexporter:9100", job="nodeexporter"}

количество места на файловой системе.

node_filesystem_avail_bytes{fstype!~"tmpfs|fuse.lxcfs|squashfs"}

Для решения этого задания приведите promql-запросы для выдачи этих метрик, а также скриншот получившейся Dashboard.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/f5cd1114-4854-4102-ad10-2e047ae0eaaa)


Задание 3
Создайте для каждой Dashboard подходящее правило alert — можно обратиться к первой лекции в блоке «Мониторинг».

В качестве решения задания приведите скриншот вашей итоговой Dashboard.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/98d1e647-c696-4e84-90eb-e38e94e40a42)



Задание 4
Сохраните ваш Dashboard.Для этого перейдите в настройки Dashboard, выберите в боковом меню «JSON MODEL». Далее скопируйте отображаемое json-содержимое в отдельный файл и сохраните его.
В качестве решения задания приведите листинг этого файла.
