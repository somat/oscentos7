yum update
yum install epel-release
yum install nginx mariadb-server
mysql_secure_installation

yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum install yum-utils
yum-config-manager --enable remi-php73
yum install php php-fpm php-pecl-mysql

firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --zone=public --add-service=https --permanent
firewall-cmd --reload

systemctl enable nginx
systemctl enable mariadb
