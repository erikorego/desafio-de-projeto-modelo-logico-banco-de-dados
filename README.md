# desafio-de-projeto-modelo-logico-banco-de-dados

_TABELAS_ :
-------------------
1. *CLIENTES* -> **clients**:
    lista de todos os clientes que já fizeram alguma compra no site. Contém informações de endereço e identificação;
2. *PRODUTOS* -> **product**: contém informações de todos os produtos que já foram vendidos, classificados por categoria e valor;
3. *PEDIDOS* -> **orders**: Cada pedido tem apenas um cliente relacionado, porém um cliente é capaz de fazer mais de um pedido. Contém data do pedido, status, código de rastreio caso tenha sido enviado ou entregue;
4. *DADOS BANCÁRIOS* -> **bank_data**: Contém as informações de pagamento de um cliente. Mesmo sem nenhuma informação bancária cadastrada, todos os clientes tem um ID de informações bancárias cadastrada para a possibilidade de cadastro posterior;
5. *PAGAMENTOS* -> **payment**: Registra os pagamentos feitos de cada pedido, contém informações sobre os métodos de pagamento utilizados;
6.  *ESTOQUES* -> **product_storage**: Contém informações sobre os armazém de estoque do e-commerce espalhados pelo Brasil;
7. *FORNECEDORES* -> **supplier**: Contém as informações relacionadas aos fornecedores;
8. *VENDEDORES TERCEIROS* -> **seller**: Contém informações dos vendedores para os quais o site revende. Podem ser PF ou PJ.
9. *RELAÇÃO PEDIDO/PRODUTO* -> **product_order**: Representa a descrição detalhada dos produtos vendidos em um determinado pedido;
10. *RELAÇÃO PRODUTO/VENDEDOR* -> **product_by_seller**: Representa a quantidade comprada de um determinado produto por um vendedor;
11. *RELAÇÃO ESTOQUE/PRODUTO* -> **product_stock**: Representa o estoque atual presente em cada um dos armazéns; 
12. *RELAÇÃO PRODUTO/FORNECEDOR* -> **buy_product**: Representa uma determinada compra feita de um fornecedor.