-- Criando Banco de Dados para cenário de E-commerce
CREATE DATABASE ecommerce;
USE ecommerce;

-- Criando tabelas
-- ====>  Cliente --> Trocando para clients para evitar a palavra reservada CLIENT
CREATE TABLE clients (
    idClient INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20),
    middle_name_Initial VARCHAR(3),
    last_name VARCHAR(20),
    CPF CHAR(11) NOT NULL,
    birth_date DATE NOT NULL,
    street_name VARCHAR(30),
    home_number INT,
    neighborhood VARCHAR(15),
    postal_code VARCHAR(8),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    CONSTRAINT unique_cpf_clients UNIQUE (CPF)
);
-- ====>  Produto
CREATE TABLE product(
	idProduct INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(15) NOT NULL,
    age_rating BOOL DEFAULT FALSE,
	category ENUM('Eletrônicos', 'Informática', 'Vestuário', 'Brinquedos', 'Movéis'),
    product_value FLOAT NOT NULL,
    product_description VARCHAR(45),
    product_rate FLOAT DEFAULT 0
);
-- ====>  Pedido --> Trocando para orders para evitar a palavra reservada ORDER
CREATE TABLE orders (
    idOrder INT AUTO_INCREMENT PRIMARY KEY,
    idOrder_client INT,
    order_status ENUM('Em andamento', 'Processando', 'Enviado', 'Entregue') DEFAULT 'Processando',
    order_description VARCHAR(255),
    order_shipping FLOAT DEFAULT 25,
    order_date DATE,
    CONSTRAINT fk_order_client FOREIGN KEY (idOrder_client)
        REFERENCES clients (idClient)
);
-- ====> Pagamento
CREATE TABLE payment (
    idPayment INT AUTO_INCREMENT PRIMARY KEY,
    idPayment_order INT,
    payment_method ENUM('Espécie', 'Cartão de Débito', 'Cartão de Crédito', 'Boleto Bancário', 'PIX'),
    payment_date DATE,
    CONSTRAINT fk_payment_order FOREIGN KEY (idPayment_order)
        REFERENCES orders (idOrder)
);
-- ====> Dados Bancários
CREATE TABLE bank_data (
    idBank_data INT AUTO_INCREMENT PRIMARY KEY,
    idBank_data_client INT,
    agency VARCHAR(10),
    account_number VARCHAR(15),
    account_type VARCHAR(10),
    has_credit_card BOOLEAN DEFAULT 0,
    credit_limit FLOAT,
    CONSTRAINT fk_idBank_data_client FOREIGN KEY (idBank_data_client)
        REFERENCES clients (idClient)
);
-- ====> Estoque
CREATE TABLE product_storage (
    idProduct_storage INT AUTO_INCREMENT PRIMARY KEY,
    storage_location VARCHAR(45)
);
-- ====> Fornecedor
CREATE TABLE supplier (
    idSupplier INT AUTO_INCREMENT PRIMARY KEY,
    supplier_CNPJ CHAR(15) NOT NULL,
    supplier_corporate_name VARCHAR(45) NOT NULL,
    supplier_contact VARCHAR(100) NOT NULL,
    CONSTRAINT unique_supplier UNIQUE (supplier_CNPJ),
    CONSTRAINT unique_supplier_corporate_name UNIQUE (supplier_corporate_name)
);
-- ====> Terceiro-vendedor
CREATE TABLE seller (
    idSeller INT AUTO_INCREMENT PRIMARY KEY,
    seller_corporate_name VARCHAR(45) NOT NULL,
    seller_CNPJ CHAR(15),
    seller_CPF CHAR(9),
    trading_name VARCHAR(45),
    location VARCHAR(45),
    CONSTRAINT unique_seller_corporate_name UNIQUE (seller_corporate_name),
    CONSTRAINT unique_seller_CNPJ UNIQUE (seller_CNPJ),
    CONSTRAINT unique_supplier_CPF UNIQUE (supplier_CPF)    
);

 -- tabelas originadas de relações com cardinalidade m x n
 -- ====> Produto por vendedor
 CREATE TABLE product_by_seller (
    idProduct_seller INT PRIMARY KEY,
    idProduct INT,
    product_quantity INT default 1
);