-- postgresql --
-- Criar o banco de dados
CREATE DATABASE bitcoin;

-- Criar a tabela Usuario
CREATE TABLE bitcoin.usuario
(
    id       SERIAL PRIMARY KEY,
    nome     VARCHAR(50)  NOT NULL,
    cpf      VARCHAR(14)  NOT NULL,
    username VARCHAR(50)  NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Criar a tabela Ordem
CREATE TABLE bitcoin.ordem
(
    id      SERIAL PRIMARY KEY,
    preco   NUMERIC(6, 2) NOT NULL,
    tipo    VARCHAR(20)   NOT NULL,
    data    TIMESTAMP     NOT NULL,
    status  VARCHAR(30)   NOT NULL,
    user_id INT           NOT NULL,
    CONSTRAINT fk_ordem_usuario FOREIGN KEY (user_id) REFERENCES bitcoin.usuario (id)
);



-- mysql --
CREATE DATABASE bitcoin;
SHOW DATABASES;
USE bitcoin;
CREATE TABLE `Usuario` (
	`id` int NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(50) NOT NULL,
	`cpf` VARCHAR(14) NOT NULL,
	`username` VARCHAR(50) NOT NULL,
	`password` VARCHAR(100) NOT NULL,
	PRIMARY KEY(`id`)) ENGINE=InnoDB;

CREATE TABLE `Ordem` (
	`id` int NOT NULL AUTO_INCREMENT,
	`preco` decimal(6,2) NOT NULL,
	`tipo` VARCHAR(20) NOT NULL,
	`data` datetime NOT NULL,
	`status` VARCHAR(30) NOT NULL,
	`user_id` int NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`user_id`) REFERENCES `Usuario` (`id`)) ENGINE=InnoDB;