#!/bin/bash

# Verifique se o script está sendo executado como superusuário
if [ "$EUID" -ne 0 ]; then
  echo "Este script deve ser executado como superusuário (root)!"
  exit 1
fi

# Defina as informações do novo site
site_name='casino'
site_directory='/var/www/html'
site_domain='casinosorte.store'

# Verifique e crie o diretório raiz do site, se necessário
if [ ! -d "$site_directory" ]; then
  echo "O diretório raiz do site não existe. Criando..."
  mkdir -p "$site_directory"
  # Defina as permissões apropriadas aqui, se necessário
fi

# Crie um arquivo de host virtual para o novo site
cat <<EOF > "/etc/apache2/sites-available/$site_name.conf"
<VirtualHost *:80>
    ServerAdmin webmaster@$site_domain
    ServerName $site_domain
    DocumentRoot $site_directory

    <Directory $site_directory>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin webmaster@$site_domain
    ServerName www.$site_domain
    DocumentRoot $site_directory

    <Directory $site_directory>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

# Ative o novo site
a2ensite "$site_name"

# Recarregue o Apache para aplicar as configurações
systemctl reload apache2

# Exiba uma mensagem de conclusão
echo "O site '$site_name' foi adicionado com sucesso ao Apache. Acesse em: http://$site_domain/ ou http://www.$site_domain/"
