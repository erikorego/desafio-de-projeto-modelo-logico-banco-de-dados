USE ecommerce;
-- ====> clients
INSERT INTO clients 
VALUES						(null,'Tiago', 'P', 'Silva', '89732567291','1987-02-28','Clodoaldo Freitas',105,'Parque Nacional', 61720380, 'Buriti', 'MA', 'Brasil'),
							(null,'Rodrigo', 'A', 'Araujo', '12084293718','1992-04-15','Alameda Arthur Meirelles',5707,'Vila São José',35397544 , 'Vitória', 'ES', 'Brasil'),
                            (null,'Idglan', 'G', 'Sousa', '26714173289','1988-01-19','Alameda B. da C. Ferreira',8684,'Parque Lotus', 60354641, 'Vila Velha', 'ES', 'Brasil'),
                            (null,'Ariane', 'N', 'Souza', '11847931279','1996-02-08',' XV de Novembro',2643,'Centro', 42376758, 'Blumenal', 'SC', 'Brasil'),
                            (null,'Emerson', 'R', 'Pinheiro', '61803107297','1989-01-15','Pedro Leonardi',1630,'Bavária', 70176295, 'Gramado', 'RS', 'Brasil'),
                            (null,'Mateus', 'L', 'Costa', '31642943212','2002-09-21',' Nossa Senhora da Escada',7516,'Aguazinha', 41973773, 'Olinda', 'BA', 'Brasil'),
                            (null,'Nadia', 'M', 'Cavalcanti', '58973724390','1972-03-25','Avenida ABD',547,'Centro', 89050145, 'Diadema', 'SP', 'Brasil'),
                            (null,'André', 'T', 'Santos', '73318679463','1980-04-14','Alameda A',4638,'Fonseca', 92000654, 'Niterói', 'RJ', 'Brasil'),
                            (null,'Joycis', 'R', 'Borges', '16244708874','1974-06-05','Raposo Tavares',5421,'Ipiranga',61628087 , 'São José dos Campos', 'SP', 'Brasil'),
                            (null,'Marcela', 'A', 'Ferreira', '49062583907','1973-01-22','Sete de Setembro',2934,'Porenquanto', 42600416, 'Teresina', 'PI', 'Brasil'),
                            (null,'Paulo', 'O', 'Freitas', '23032982303','1985-07-05','Ajuricaba',4016,'Vila Amazonas', 32940840, 'Manaus', 'AM', 'Brasil');

-- ====> product
INSERT INTO product
VALUES 						(null, 't-shirt', null, 'Vestuário', 29.99, 'Cor: ROSA, Polo', 4.2),
							(null, 'Mouse', null, 'Informática', 129.99, 'Bluetooth, 600 DPI', 7.2),
							(null, 'Boneco SuperMan', TRUE, 'Brinquedos', 43.99, 'Plastico, 3-5 anos', 3.2),
							(null, 'Mesa', null, 'Movéis', 229.99, 'Madeira, 1.0x2.5x0.3', 9.2),
							(null, 'Smart TV', null, 'Eletrônicos', 1329.99, 'LG', 9.8),
							(null, 'Vestido', null, 'Vestuário', 129.99, 'Verde, Seda', 4.2),
							(null, 'Microondas', null, 'Eletrônicos', 429.99, 'Samsung', 4.2),
							(null, 'Sofa', null, 'Movéis', 829.99, 'Marrom', 4.2),
							(null, 'Conj Cadeiras', null, 'Movéis', 579.99, '8 cadeiras', 4.2),
							(null, 'Notebook', null, 'Informática', 4869.99, 'Dell, I8, 256 SSD, W11', 9.2),
							(null, 'Calça Jeans', null, 'Vestuário', 159.99, 'Azul', 4.2),
							(null, 'Boneca Barbie', TRUE, 'Brinquedos', 429.99, 'Edição de colecionador', 1.2),
							(null, 'Geladeira', null, 'Eletrônicos', 879.99, 'LG', 6.2),
							(null, 'Aspirador de Pó', null, 'Eletrônicos', 549.99, null, 5.2),
							(null, 'Camisa Social', null, 'Vestuário', 89.99, 'Branca', 4.2),
							(null, 'Carrinho', TRUE, 'Brinquedos', 69.99, 'Pilha AA, Sem fio, controle remoto', 7.8);
	
-- ====> orders

INSERT INTO orders
VALUES 				(null, 1, 'Em andamento', null, 30, '2023-10-30'),
					(null, 2, 'Processando', null, null, '2023-03-12'),
                    (null, 5, 'Enviado', null, 60, '2022-12-24'),
                    (null, 6, 'Entregue', null, 49, '2022-07-02'),
                    (null, 6, 'Em andamento', null, 23, '2023-12-24'),
					(null, 8, 'Processando', null, 45, '2022-03-02'),
                    (null, 5, 'Enviado', null, 26, '2023-10-08'),
                    (null, 2, 'Entregue', null, null, '2023-02-12'),
                    (null, 6, 'Em andamento', null, 45, '2022-04-21'),
					(null, 1, 'Processando', null, 56.70, '2022-08-14'),
                    (null, 11, 'Enviado', null, 90, '2022-11-27'),
                    (null, 10, 'Entregue', null, 120, '2022-08-28'),
                    (null, 1, 'Em andamento', null, null, '2023-03-27'),
					(null, 11, 'Processando', null, 82.70, '2023-04-09'),
                    (null, 8, 'Enviado', null, 180, '2023-03-14'),
                    (null, 10, 'Entregue', null, 100, '2022-12-26'),
                    (null, 9, 'Em andamento', null, 50, '2022-01-24'),
					(null, 1, 'Processando', null, null, '2022-11-24'),
                    (null, 11, 'Enviado', null, 25.70, '2022-07-07'),
                    (null, 9, 'Entregue', null, 51.50, '2022-12-10'),
                    (null, 1, 'Em andamento', null, 88.50, '2022-01-03'),
					(null, 11, 'Processando', null, 78.50, '2022-06-15'),
                    (null, 4, 'Enviado', null, 56.80, '2023-04-08'),
                    (null, 7, 'Entregue', null, 78.60, '2022-01-07'),
                    (null, 1, 'Em andamento', null, 28.50, '2022-04-12'),
					(null, 2, 'Processando', null, 35, '2023-03-01'),
                    (null, 3, 'Enviado', null, 80, '2023-06-24'),
                    (null, 8, 'Entregue', null, 45, '2022-05-06');

-- ====> payment
INSERT INTO payment
VALUES 				(null, 1, 'Cartão de Débito','2023-10-30'),
					(null, 2, 'Boleto Bancário', '2023-03-15'),
                    (null, 3, 'Cartão de Débito','2022-12-24'),
                    (null, 4, 'Boleto Bancário', '2022-07-05'),
                    (null, 5, 'PIX', '2023-12-24'),
					(null, 6, 'Espécie', '2022-03-03'),
                    (null, 7, 'Boleto Bancário', '2023-10-11'),
                    (null, 8, 'Boleto Bancário', '2023-02-15'),
                    (null, 9, 'PIX', '2022-04-21'),
					(null, 10, 'Cartão de Débito', '2022-08-14'),
                    (null, 11, 'PIX', '2022-11-27'),
                    (null, 12, 'PIX', '2022-08-28'),
                    (null, 13, 'Cartão de Débito', '2023-03-27'),
					(null, 14, 'PIX', '2023-04-09'),
                    (null, 15, 'Cartão de Crédito', '2023-03-14'),
                    (null, 16, 'Espécie', '2022-12-27'),
                    (null, 17, 'Cartão de Crédito', '2022-01-24'),
					(null, 18, 'Boleto Bancário', '2022-11-27'),
                    (null, 19, 'Boleto Bancário', '2022-07-10'),
                    (null, 20, 'Cartão de Crédito','2022-12-10'),
                    (null, 21, 'PIX', '2022-01-03'),
					(null, 22, 'Boleto Bancário', '2022-06-18'),
                    (null, 23, 'Boleto Bancário', '2023-04-11'),
                    (null, 24, 'PIX', '2022-01-07'),
                    (null, 25, 'Cartão de Crédito', '2022-04-12'),
					(null, 26, 'Cartão de Crédito', '2023-03-01'),
                    (null, 27, 'PIX', '2023-06-24'),
                    (null, 28, 'PIX', '2022-05-06');
                    
-- ====> bank_data
INSERT INTO bank_data
VALUES 				(NULL, 1, '9999-0','18764-5', 'Corrente', TRUE, 5000),
					(NULL, 2, '1108-9', '49899-7', 'Corrente', NULL, NULL),
                    (NULL, 3, NULL, NULL, NULL, NULL, NULL),
                    (NULL, 4, '4508-0', '33868-9', 'Poupança', TRUE, 15000),
                    (NULL, 5, '1078-3', '46993-1', 'Corrente', NULL, NULL),
                    (NULL, 6,  NULL, NULL, NULL, NULL, NULL),
                    (NULL, 7, '6296-1', '75449-3', 'Corrente', TRUE, 800),
                    (NULL, 8, '1914-5', '88958-9', 'Corrente', TRUE, 20000),
                    (NULL, 9, '2536-9', '44390-7', 'Poupança', NULL, NULL),
                    (NULL, 10,  NULL, NULL, NULL, NULL, NULL),
                    (NULL, 11, '4022-6', '74188-8', 'Corrente', TRUE, 60000);
                    
-- ====> storage
INSERT INTO product_storage
VALUES 				(NULL, 'MA'),
					(NULL, 'AM'),
                    (NULL, 'SP'),
                    (NULL, 'PR'),
                    (NULL, 'MS');

-- ====> supplier
INSERT INTO supplier
VALUES 				(NULL, '625194043525392', 'Eletronicos_LTDA', '89-366528545'),
					(NULL, '764956745561404', 'Infantil & CIA', '18-530212733'),
                    (NULL, '165910064945528', 'Soluções em Informática', '18-990239240'),
                    (NULL, '165563872805518', 'Guadalajara', '78-802817327'),
                    (NULL, '661774463497449', 'Movéis & Importados', '55-377634023');

-- ====> seller
INSERT INTO seller
VALUES				(NULL, 'Antonio Variedades EIRELI', '606766555171936', NULL, 'Toinho Variedades', 'AM'),
					(NULL, 'Gustavo P Freitas', NULL, '89266723251', NULL, 'PI'),
                    (NULL, 'SAUINE EIRELI', '511654470714077', NULL, 'Saul Informática', 'SP'),
                    (NULL, 'F4 Importados LTDA', '281040256072165', NULL, 'Paulinho Importados', 'SP'),
                    (NULL, 'Albert S. Santos', NULL, '35646167582', NULL, 'MA'),
                    (NULL, 'Vitoria Fagundes Colecionaveis LTDA', '218107558650683', NULL, 'Arena Games', 'PR'),
                    (NULL, 'Jairo M Estranho', NULL, '13161757169', NULL, 'RS'),
                    (NULL, 'Rudah Araujo Confecções LTDA', '666222588352450', NULL, 'Atacadão do 10', 'RS');

-- ====> product_by_seller
INSERT INTO product_by_seller
VALUES 				(1,5, 204),
					(5,13, 271),
                    (3,3, 267),
                    (3,10, 106),
                    (2,1, 63),
					(6,10, 113),
					(2,12, 57),
					(2,11, 16),
					(5,6, 282),
					(8,16, 230),
					(8,3, 152),
					(8,11, 244),
					(7,6, 79),
					(2,14, 74),
					(4,16, 286),
					(6,15, 46),
					(8,2, 160),
					(5,12, 14),
					(1,15, 21),
					(2,2, 62),
					(3,5, 181),
					(3,9, 209),
					(4,14, 246),
					(3,14, 228),
					(5,14, 201),
					(8,12, 60),
					(4,4, 210),
					(7,12, 85),
					(4,5, 223),
					(2,6, 14),
					(1,2, 24),
					(3,6, 218),
					(6,9, 248);
                    

-- ====> product_stock
INSERT INTO product_stock
VALUES 				(4,1, 228),
					(6,2, 6),
					(1,3, 144),
					(8,1, 12),
					(14,2, 60),
					(13,3, 112),
					(14,3, 280),
					(16,5, 64),
					(2,3, 142),
					(12,3, 283),
					(16,3, 285),
					(15,3, 61),
					(8,3, 257),
					(8,2, 111),
					(5,4, 219),
					(5,5, 288),
					(7,3, 101),
					(16,1, 46),
					(4,2, 124),
					(3,2, 252);
                    
-- ====> product_stock