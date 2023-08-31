USE ecommerce;

-- lista de todos os clientes:
SELECT CONCAT(first_name, ' ' ,middle_name_initial ,' ', last_name) AS 'Complete_name'  FROM clients ORDER BY first_name;

-- lista de todos os Fornecedores:
SELECT supplier_corporate_name FROM supplier order by supplier_corporate_name;

-- lista de todos os vendedores (terceiros):
select seller_corporate_name from seller order by seller_corporate_name;

-- lista de todos os vendedores (terceiros) que são pessoas jurídicas:
select seller_corporate_name from seller where seller_CNPJ is not null order by seller_corporate_name;

-- lista de todos os vendedores (terceiros) que são pessoas jurídicas:
select seller_corporate_name from seller where seller_CPF is not null order by seller_corporate_name;

-- Algum vendedor também é fornecedor?
select count(*) as 'Quantidade de Fornecedores que são vendedores' 
from seller, supplier where seller_corporate_name = supplier_corporate_name;

-- lista de produtos:
select idProduct as 'Código', product_name as 'Produto',category as Categoria from product order by idProduct;

-- lista de estoque:
select idProduct_storage as 'Código', concat('Armazém em ',storage_location) as 'Local' from product_storage order by storage_location;

-- mostrar clientes e quantidade de pedidos feitos:
select CONCAT(first_name, ' ' ,middle_name_initial ,' ', last_name) AS 'Complete_name', count(idOrder_client) as 'QTD de pedidos' 
from clients inner join orders on idClient = idOrder_client 
Group by idClient 
order by count(idOrder_client) desc;

-- lista de produtos com mais de 200 itens em estoque (todos):
select product_name as 'Nome do produto', sum(product_quantity) as Quantidade 
from product inner join product_stock on idProduct = idPS_product
group by product_name
having Quantidade > 199
order by Quantidade DESC;
