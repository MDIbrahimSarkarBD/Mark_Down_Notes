sudo service mysql stop
sudo mysqld_safe --skip-grant-tables &
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'new_password';
FLUSH PRIVILEGES;
EXIT;

sudo service mysql restart

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIxNjY0OTg3XX0=
-->