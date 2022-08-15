#!/bin/bash
echo "Configuração iniciada"

echo "Criando diretório público..."
mkdir /publico
chown root:root /publico
chmod 777 /publico

# administracao
echo "Criando diretório administracao em /..."
mkdir /administracao

echo "Criando o grupo GRP_ADM..."
groupadd GRP_ADM
chown root:GRP_ADM /administracao
chmod 770 /administracao

echo "Adicionando usuários..."
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_ADM carlos
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_ADM joao
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_ADM maria

# vendas
echo "Criando diretório vendas em /..."
mkdir /vendas

echo "Criando o grupo GRP_VEN..."
groupadd GRP_VEN
chown root:GRP_VEN /vendas
chmod 770 /vendas

echo "Adicionando usuários..."
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_VEN debora
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_VEN roberto
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_VEN sebastiana

#secretariado
echo "Criando diretório secretariado em /..."
mkdir /secretariado

echo "Criando o grupo GRP_SEC..."
groupadd GRP_SEC
chown root:GRP_SEC /secretariado
chmod 770 /secretariado

echo "Adicionando usuários..."
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_SEC amanda
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_SEC josefina
useradd -m -s /bin/bash -p $(openssl passwd -5 123) -G GRP_SEC rogerio

echo "Configuração finalizada"
