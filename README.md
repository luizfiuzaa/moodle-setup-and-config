# Setup Moodle + ZorinOS
Para setup do Moodle no ZorinOS, é necessário realizar os seguintes passos:

1. Atualizar o Sistema
```sh
sudo apt update && sudo apt upgrade
```

2. Instalação do Apache
```sh
sudo apt install apache2
```

3. Instalação de MariaDB
```sh
sudo apt install mariadb-sever
```

É recomendado executar, também, o script de segurança:

```sh
sudo mysql_secure_installation
```


4. Instalando o PHP e extensões
```sh
sudo apt install php libapache2-mod-php php-mysql php-curl php-gd php-intl php-zip php-xmlrpc php-soap php-mbstring php-xml
```

