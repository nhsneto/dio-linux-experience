#!/bin/bash

# atualiza o servidor
echo "Operação iniciada"
echo "Atualizando o sitema..."
apt-get update
apt-get -y upgrade
echo "Atualização finalizada"

# instala o apache e unzip
echo "Instalando o pacote apache2..."
apt-get install -y apache2
echo "Instalando o pacote unzip..."
apt-get install -y unzip

# download e descompactacao do zip da pagina incial
echo "Baixando e descompactando main.zip..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

# backup da pagina padrao do apache2
echo "Gerando backup da página inicial padrão do apache2..."
mv /var/www/html/index.html /var/www/html/index.html.BACKUP

# copiando arquivos
echo "Copiando arquivos..."
cp -R /tmp/linux-site-dio-main/* /var/www/html
echo "Operação finalizada"
