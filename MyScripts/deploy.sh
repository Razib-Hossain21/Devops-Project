#Deploy a complete php and mysql website by shell script#

#!/bin/bash

echo "Updating system..."
sudo apt update -y
sudo apt upgrade -y

echo "Installing Apache2..."
sudo apt install apache2 -y

echo "Installing PHP + extensions..."
sudo apt install php libapache2-mod-php php-mysql -y

echo "Installing MySQL Server..."
sudo apt install mysql-server -y

echo "Starting services..."
sudo systemctl enable apache2
sudo systemctl start apache2

sudo systemctl enable mysql
sudo systemctl start mysql

cd /home/razib/project/Devops-Project/php-mysql-ecom
echo "Creating database..."
sudo mysql -e "CREATE DATABASE IF NOT EXISTS ecom_db;"

echo "Cleaning web root..."
sudo rm -rf /var/www/html/*

echo "Cloning project..."
sudo git clone https://github.com/Razib-Hossain21/Devops-Project.git /var/www/html/

echo "Setting permissions..."
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/

echo "Enabling Apache rewrite module..."
sudo a2enmod rewrite

echo "Restarting Apache..."
sudo systemctl restart apache2

echo "Deployment Completed Successfully...!"

