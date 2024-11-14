sudo service mysql stop
sudo mysqld_safe --skip-grant-tables &
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234@!';
FLUSH PRIVILEGES;
EXIT;

sudo service mysql restart

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE1ODgwNzU5MDhdfQ==
-->