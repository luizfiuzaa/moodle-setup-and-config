echo "Script de Instalação iniciado"

sudo apt update && sudo apt upgrade
sudo apt install apache2
sudo apt install mariadb-sever
sudo mysql_secure_installation
sudo add-apt-repository ppa:ondrej/php
udo apt install php8.2 libapache2-mod-php8.2 php8.2-mysql php8.2-curl php8.2-gd php8.2-intl php8.2-zip php8.2-xmlrpc php8.2-soap php8.2-mbstring php8.2-xml
sudo a2dismod php8.1

echo "Script de Instalação finalizado!"