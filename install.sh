wget https://releases.wikimedia.org/mediawiki/1.32/mediawiki-1.32.1.tar.gz

tar xvzf mediawiki-*.tar.gz

sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt -y install php7.4 php-mbstring php-xml php-mysql libapache2-mod-php 
sudo systemctl restart apache2
sudo echo "mysql-server-5.7 mysql-server/root_password password Password@123" | sudo debconf-set-selections
sudo echo "mysql-server-5.7 mysql-server/root_password_again password Password@123" | sudo debconf-set-selections
sudo apt-get -y install mysql-client
sudo apt-get -y install mysql-server-5.7

sudo mv mediawiki-1.32.1 /var/www/html/mediawiki
sudo systemctl restart apache2
