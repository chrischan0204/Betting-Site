#!/bin/bash

# Atualiza os pacotes do sistema
sudo apt update
sudo apt upgrade -y

# Instala o Apache
sudo apt install apache2 -y

# Habilita o módulo mod_rewrite do Apache
sudo a2enmod rewrite

# Instala o PHP e extensões comuns (ajuste conforme necessário)
# Incluindo mysqli para suporte ao MySQL
sudo apt install php libapache2-mod-php php-mysql php-cli php-gd php-imagick php-recode php-tidy php-xmlrpc php-mbstring php-xml php-curl php-mysqli zip unzip -y

# Instala o MySQL
sudo apt install mysql-server -y

# Instala o Composer (gerenciador de dependências para PHP)
sudo apt install composer -y

# Instala o phpMyAdmin
sudo apt install phpmyadmin -y

# Configura o phpMyAdmin para trabalhar com o Apache
sudo phpenmod mbstring
sudo systemctl restart apache2

# Habilita e inicia o Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Habilita e inicia o MySQL
sudo systemctl enable mysql
sudo systemctl start mysql

# Configuração do banco de dados MySQL
sudo mysql -e "CREATE DATABASE casinosorte CHARACTER SET utf8 COLLATE utf8_general_ci;"
sudo mysql -e "CREATE USER 'casino'@'%' IDENTIFIED BY 'bancoze';"
sudo mysql -e "GRANT ALL PRIVILEGES ON casinosorte.* TO 'casino'@'%';"
sudo mysql -e "FLUSH PRIVILEGES;"

# Importa o banco de dados
sudo mysql -u root casinosorte < /leh/casinosorte.sql

# Descompacta o sistema e move para o diretório do Apache
sudo rm -rf /var/www/html
sudo unzip /leh/html.zip -d /var/www/

# Ajustar permissões no diretório do Apache
sudo chown -R www-data:www-data /var/www/html/
sudo find /var/www/html/ -type d -exec chmod 755 {} \;
sudo find /var/www/html/ -type f -exec chmod 644 {} \;

# Reinicia o Apache para aplicar as mudanças
sudo systemctl restart apache2

# Verificações finais
echo "Realizando verificações finais..."

# Verificar se o Apache está rodando
echo "Verificando o status do Apache..."
sudo systemctl status apache2 | grep "active (running)"

# Verificar se o MySQL está rodando
echo "Verificando o status do MySQL..."
sudo systemctl status mysql | grep "active (running)"

# Verificar as versões instaladas
echo "Verificando as versões instaladas:"
echo "PHP:"
php -v
echo "Apache:"
apache2 -v
echo "MySQL:"
mysql --version

# Configurações adicionais podem ser necessárias aqui

echo "Instalação concluída!"
