#!/bin/bash

echo "Criação dos Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação dos Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos Usuários"

useradd carlos2 -G GRP_ADM -m -s /bin/bash -p $(openssl passwd  Senha123)
useradd maria -G GRP_ADM -m -s /bin/bash -p $(openssl passwd  Senha123)
useradd joao -G GRP_ADM -m -s /bin/bash -p $(openssl passwd  Senha123)

useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd Senha123) debora
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd Senha123) sebastiana
useradd -G GRP_VEN -m -s /bin/bash -p $(openssl passwd Senha123) roberto

useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd Senha123) josefina
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd Senha123) amanda
useradd -G GRP_SEC -m -s /bin/bash -p $(openssl passwd Senha123) rogerio

echo "Atribuição de Direitos ao Acesso dos Diretórios"

chmod 777 /publico

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

echo "Final do Script"
