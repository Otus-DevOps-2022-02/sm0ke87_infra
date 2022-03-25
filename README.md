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
  --metadata-from-file user-data=meta.yaml
