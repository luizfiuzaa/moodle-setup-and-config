# Setup Moodle + ZorinOS
## Instalações
Para setup do Moodle no ZorinOS, é necessário realizar os seguintes passos:

### Script de Instalação
Dê a permissão na máquina para o arquivo ``installation.sh``

```sh
chmod +xw moodle-setup-and-config/scripts/installation.sh
```

### Destalhes
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
sudo add-apt-repository ppa:ondrej/php
```

```sh
sudo apt install php8.2 libapache2-mod-php8.2 php8.2-mysql php8.2-curl php8.2-gd php8.2-intl php8.2-zip php8.2-xmlrpc php8.2-soap php8.2-mbstring php8.2-xml
```

```sh
sudo a2dismod php8.1
```

