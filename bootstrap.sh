echo "Creating local wp config file..."
cp /var/www/config/env/local-sample.php /var/www/config/env/local.php
echo "Importing MySQL Database..."
mysql -u root --password=root scotchbox < /var/www/config/db.sql
echo "Installing WP-CLI"
curl -s https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar > wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
