#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd mary -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd cesar -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd cesar -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd diego -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd mariana -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rose -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd caio -m  -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /Publico