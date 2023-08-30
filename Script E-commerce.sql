-- Criando Banco de Dados para cenário de E-commerce
CREATE DATABASE ecommerce;
USE ecommerce;

-- Criando tabelas
-- ====>  Cliente --> Trocando para Consumidor para evitar a palavra reservada CLIENT
CREATE TABLE consumer(
	idConsumer INT AUTO_INCREMENT PRIMARY KEY, 
    First_name VARCHAR(20),
    Middle_name_Initial VARCHAR(3),
    Last_name VARCHAR(20),
    CPF CHAR(11) NOT NULL, 
    Birth_date DATE NOT NUll,
    -- Consumer Address -----
    Street_name VARCHAR(30),
    Home_number INT,
    Neighborhood VARCHAR(15),
    Postal_code VARCHAR(8),
    City VARCHAR(20),
    State VARCHAR(20),
    Country VARCHAR(20),   
    -- ----------------------
    CONSTRAINT unique_cpf_consumer UNIQUE (CPF)
);
-- ====>  Produto
CREATE TABLE product(
	idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Product_name VARCHAR(15) NOT NULL,
    Age_rating BOOL DEFAULT FALSE,
	Category ENUM('Eletrônicos', 'Informática', 'Vestuário', 'Brinquedos', 'Movéis'),
    Product_value FLOAT NOT NULL,
    Product_description VARCHAR(45),
    Product_rate FLOAT DEFAULT 0
);
-- ====>  Pedido

