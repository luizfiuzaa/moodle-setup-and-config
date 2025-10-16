# Setup Moodle + ZorinOS
## Instalações dos Recursos
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

5. Instalação do Moodle
```sh
wget https://download.moodle.org/download.php/direct/stable403/moodle-latest-403.tgz
```

Extrair os arquivos
```sh
tar -zxvf moodle-latest-403.tgz
```

Mover os arquivos para o diretório do servidor WEB
```sh
sudo mv moodle /var/www/html/
```



## Incialização e Configuração

### Banco de Dados
1. Acessar o MariaDB + senha do usuário
```sh
sudo mysql -u root -p
```

2. Criar Banco de Dados
```sql
CREATE DATABASE moodle DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

3. Criando user e permissões
```sql
CREATE USER 'luiz'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON moodle.* TO 'luiz'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

### Moodle
1. Ajustando permissões dos arquivos
```sh
sudo chown -R www-data:www-data /var/www/html/moodle
sudo chmod -R 755 /var/www/html/moodle
```

2. Criando diretório de dados do Moodle (``moodledata``)
```sh
sudo mkdir /var/www/moodledata
sudo chown -R www-data:www-data /var/www/moodledata
```

## Instalador WEB Moodle
1. Acesse ``http://localhost/moodle``;

2. Configure Idioma;

3. Caminho para o diretório de dados (``/var/www/moodledata``)

4. Driver do BD: Selecionar MariaDB(nativo/msqli)

5. Configurando BD:
-	user: luiz
-	senha: 1234

6. Criar conta de ADMIN

7. Fornecer um nome para o site do Moodle e + informações

8. Acessar o Moodle em: ``http://localhost/moodle``