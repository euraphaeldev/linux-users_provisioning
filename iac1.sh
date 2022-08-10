#!/bin/bash

# CREATE DIRECTORIES
echo "Creating directories"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Directories are created now"

# CREATE GROUPS
echo "Creating groups"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Groups are created"

# CREATE USERS
echo "Creating users now"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd maria -e

useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd joao -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd sebastiana -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd amanda -e

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd rogerio -e
echo "Users are created"

# REGISTERING USERS AT YOUR GROUPS
echo "Registering users at GRP_ADM"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
echo "Complete users register"

echo "Registering users at GRP_VEN"
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
echo "Complete users register"

echo "Registering users at GRP_SEC"
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
echo "Complete users register"

echo "Managing permissions"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Complete managing permissions"

echo "Provisioning complete! Congratulations"
