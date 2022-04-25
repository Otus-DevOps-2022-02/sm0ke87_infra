<h1 align="center">Приветствую в моем репозитарии
<img src="https://github.com/blackcater/blackcater/raw/main/images/Hi.gif" height="32"/></h1>
<h3 align="center">Тут собираются артефакты от моего прохождения курса от OTUS</h3>

# ansible-2
* Созданы плейбуки согласно ДЗ:
  * Плейбуки с управлением по тэгам
  * Отдельные плейбуки
  * Мультиблейбук
* Подключен ansible как провизионер в пакер

# ansible
* Опробованы модули ```ping, apt, command, service, systemd```
* Создан простой плейбук Clone.yml для установки из репозитария express42
Дополнительно:
  * После удаления папки reddit и запуске повторно плейбука, ansible повторяет установку из репозитария, чем сообщает об этом через переменную change
---------
* Задачка со зведочкой:
  * Найден и перелопачен py скрипт
  * Для работы нужно создать json из terraform ```terraform show -json > ../../ansible/terra.json ```
  * запуск ```ansible all -m ping -i dyn_inventory.py```

# terraform-2
* Созданы модули app и db как отдельные конфигурационные файлы
* Созданы папки stage и prod

# terraform-1
* Создан ресурс yandex_compute_instance.reddit-app из образа reddit-base-1649162103.
* Добавлены ключи для доступа по SSH.
* Добавлены провиженеры для развертывания приложения.
* Все строковые значения, id, пути файлов вынесены в variables.
* Объявления в файле variables.tf
* Значения в файле terraform.tfvars

Дополнительное задание:

* С помощью ресурсов yandex_alb_load_balancer, yandex_alb_http_router, yandex_alb_backend_group, yandex_alb_target_group, yandex_alb_virtual_host описан HTTP-балансировщик в файле lb.tf.
* Добавлены переменные в outputs.tf

# sm0ke87_infra
sm0ke87 Infra repository

Прыжок через джампхост в одну команду:
ssh -J sm0ke@84.201.156.63 sm0ke@10.128.0.17
bastion_IP = 84.201.156.63
someinternalhost_IP = 10.128.0.17


Домашнее задание №4
testapp_IP = 51.250.64.237
testapp_port = 9292

Создание инстанса:

yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/sm0ke.pub \
  --zone=ru-central1-a \
  --metadata-from-file user-data=metafile.yaml
