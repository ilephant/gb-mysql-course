# Подключаемся к mysql
mysql -uroot -p

# Создаем базу данных
CREATE DATABASE example;

# Используем базу
USE example;

# Создаем таблицу
CREATE TABLE users (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

# Выходим
exit;

# Создаем дамп
mysqldump -uroot -p example > ./dump.sql

# Подключаемся к mysql
mysql -uroot -p

# Создаем базу данных
CREATE DATABASE sample;

# Выходим
exit;

# Импортируем дамп
mysql -uroot -p sample < ./dump.sql

# Делаем дамп таблицы help_keyword, первые 100 строк
mysqldump --opt --where="1 limit 100" -uroot -p mysql help_keyword > ./help_keyword-dump.sql




