#!/bin/bash
cd /var/www/html
curl -LO https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz
chown -R www-data:www-data wordpress
chmod -R 755 wordpress

cp wordpress/wp-config-sample.php wordpress/wp-config.php

sed -i "s/database_name_here/YOUR_DATABASE_NAME/" wordpress/wp-config.php
sed -i "s/username_here/YOUR_USER_NAME/" wordpress/wp-config.php
sed -i "s/password_here/YOUR_PASSWORD/" wordpress/wp-config.php
sed -i "s/localhost/db/" wordpress/wp-config.php
nginx -t && nginx -s reload