#!/bin/bash

echo "Inciando o Script..."

#Update Servidor
echo "Atualização em andamento..."
apt-get update
apt-get upgrade -y

#Instalar apache e unzip
apt-get install apache2 -y
apt-get install unzip -y

#Baixando a aplicação
echo "Baixando e copiando os arquivos para o apache..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#Descompactando os arquivos e copiando para o diretório do apache
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
