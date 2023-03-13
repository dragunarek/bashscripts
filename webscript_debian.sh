#!/bin/bash

# Instalacja Apache
sudo apt update -y && sudo apt install apache2 -y > /dev/null

systemctl start apache2
systemctl enable apache2

#Instalacja PHP
sudo apt install php libapache2-mod-php php-cli php-zip php-curl php-xml -y > /dev/null

#Tworzenie folderu tymczasowego
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

#Tworzenie katalogu domeny cyberads.pl
mkdir /var/www/html/cyberads
chmod +x /var/www/html/cyberads


#rPobranie i instalacja templatki
sudo wget https://www.tooplate.com/zip-templates/2097_pop.zip > /dev/null
unzip 2097_pop.zip
sudo cp -r 2097_pop/* /var/www/html/cyberads
echo

systemctl restart apache2

#Sprzątanie

rm -rf /tmp/webfiles
echo


