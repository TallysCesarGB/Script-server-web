#!/bin/bash

echo "Atualizando o servidor e instalando as ferramentas..."

apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e copiando os arquivos de aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
pacman -S apache unzip wget -y
cd linux-site-dio-main
cp -R * /var/www/html/
