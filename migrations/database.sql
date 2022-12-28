CREATE DATABASE IF NOT EXISTS `jetbrains`;

USE jetbrains;

CREATE TABLE IF NOT EXISTS `products`
(
	`id` INT(10) PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL
);

INSERT INTO products (id, name) VALUES (1, "IntelliJ IDEA");
INSERT INTO products (id, name) VALUES (2, "CLion");
INSERT INTO products (id, name) VALUES (3, "GoLand");
