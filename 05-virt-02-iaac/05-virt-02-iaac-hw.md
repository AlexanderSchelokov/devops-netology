Задача 1
---

Опишите основные преимущества применения на практике IaaC-паттернов.
Скорость и эффективность: IaaC позволяет быстро и надежно развертывать и обновлять инфраструктуру.

Повторяемость и стандартизация: IaaC обеспечивает повторяемость и стандартизацию, что уменьшает вероятность ошибок и упрощает масштабирование.

Воспроизводимость: IaaC позволяет легко воспроизвести инфраструктуру в любой среде, что упрощает тестирование и отладку.

Документация: Код IaaC служит документацией, описывающей текущее состояние инфраструктуры.

Безопасность и соответствие стандартам: IaaC позволяет автоматизировать процессы проверки безопасности и соответствия стандартам.

Какой из принципов IaaC является основополагающим?

Основополагающим принципом IaaC является идемпотентность, что означает, что операции (например, развертывание, обновление или удаление ресурсов) можно безопасно повторять несколько раз, и конечный результат будет таким же, как если бы операция была выполнена один раз. Это обеспечивает надежность и предсказуемость при управлении инфраструктурой.

***

Задача 2
---

Чем Ansible выгодно отличается от других систем управление конфигурациями?

Простота использования: Ansible известен своей простотой и легкостью использования благодаря языку конфигурации на основе YAML, который легко читать и писать.

Отсутствие агента: Ansible не требует установки специального программного обеспечения на узлах, которые будут управляться этим инструментом.

Минималистичный дизайн: Ansible имеет минималистичный дизайн, который позволяет пользователям быстро начать работу.

Все в одном: Ansible можно считать инструментом “все в одном”, поскольку все этапы автоматизации могут быть выполнены с помощью Ansible.

Какой, на ваш взгляд, метод работы систем конфигурации более надёжный — push или pull?

Push: В push-системе центральная система знает все о метриках, кто их имеет, что они из себя представляют и так далее9. Однако push-системы могут столкнуться с проблемами масштабируемости при увеличении числа целевых хостов.

Pull: В pull-системе клиенты самостоятельно связываются с сервером, поэтому система в целом более масштабируема, чем push-система6. Однако у производителя может возникнуть сложность в удовлетворении внезапного роста спроса со стороны клиентов.

Выбор между push и pull в значительной степени зависит от конкретных требований и контекста использования. Некоторые системы управления конфигурациями, включая Ansible, поддерживают оба подхода.

***

Задача 3
Установите на личный linux-компьютер(или учебную ВМ с linux):

VirtualBox,
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/79581c57-e822-430a-a143-e75016637afe)

Vagrant, рекомендуем версию 2.3.4(в более старших версиях могут возникать проблемы интеграции с ansible)
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/d7f0d2f9-092d-4cf6-8b0e-65f04ba5dd41)

Terraform версии 1.5.Х (1.6.х может вызывать проблемы с яндекс-облаком),
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/43d9d710-bb7e-458f-bee7-7f7b1a25b9a1)

Ansible.

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/2534bd4a-cbf0-4898-b89a-b44d51c9afb4)

***

Задача 4
---

Воспроизведите практическую часть лекции самостоятельно.

Создайте виртуальную машину.

Зайдите внутрь ВМ, убедитесь, что Docker установлен с помощью команды
docker ps,

Vagrantfile из лекции и код ansible находятся в папке.

Примечание. Если Vagrant выдаёт ошибку:

URL: ["https://vagrantcloud.com/bento/ubuntu-20.04"]     
Error: The requested URL returned error: 404:
выполните следующие действия:

Скачайте с сайта файл-образ "bento/ubuntu-20.04".
Добавьте его в список образов Vagrant: "vagrant box add bento/ubuntu-20.04 <путь к файлу>".
Важно!: Если ваша хостовая рабочая станция - это windows ОС, то у вас могут возникнуть проблемы со вложенной виртуализацией. способы решения . Если вы устанавливали hyper-v или docker desktop то все равно может возникать ошибка: Stderr: VBoxManage: error: AMD-V VT-X is not available (VERR_SVM_NO_SVM) . Попробуйте в этом случае выполнить в windows от администратора команду: "bcdedit /set hypervisorlaunchtype off" и перезагрузиться

Приложите скриншоты в качестве решения на эту задачу. Допускается неполное выполнение данного задания если не сможете совладать с Windows.

К сожалению эксперементировать в Windows не особо хочется т.к. много важной информации хранится!

![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/403ff4eb-a2da-4a55-a092-fdb27ad98f96)
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/e8610bf7-b9d2-4221-892b-bdd9f9fae273)
![image](https://github.com/AlexanderSchelokov/devops-netology/assets/121572590/d1fd62bf-4d85-40a9-8f89-37267772677b)




