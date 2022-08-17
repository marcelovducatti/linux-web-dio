#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando apache2..."
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/marcelovducatti/linux-web-dio
unzip main.zip
cd linux-web-dio
cp -R * /var/www/html/