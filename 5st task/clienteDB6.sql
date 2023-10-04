
CREATE DATABASE clienteDB6;

CREATE TABLE clientes(
    codCliente int NOT NULL PRIMARY KEY,
    nome varchar(100) NOT NULL,
    telefone varchar(15) NOT NULL,
    endereco varchar(100) NOT NULL
);

CREATE TABLE pedidos(
    codPedido int NOT NULL PRIMARY KEY,
    codCliente int NOT NULL,
    data_ data NOT NULL,

    CONSTRAINT fk_clientes_pedidos FOREIGN KEY (codCliente) REFERENCES clientes(codCliente)         

);

CREATE TABLE produtos(
    codProduto int NOT NULL PRIMARY KEY,
    descricao varchar(100) NOT NULL,
    estoque int NOT NULL
);

CREATE TABLE itensPedidos(
    codPedido int NOT NULL,
    codProduto varchar(100) NOT NULL,
    qtd int NOT NULL,

    CONSTRAINT fk_itensPedidos_produtos FOREIGN KEY (codProduto) REFERENCES produtos(codProduto)         
);

INSERT INTO clientes 
(
    1,
    "Fabiano",
    "9999-8888",
    "Rua 2, mansão 3"
);

INSERT INTO pedidos 
(
    1,
    1,
    "2019-03-01"
);

INSERT INTO produtos 
(
    1,
    "Pizza",
    5
);

INSERT INTO produtos 
(
    2,
    "Coca-Cola",
    10
);

INSERT INTO itensPedidos 
(
    1,
    1,
    3
);

INSERT INTO itensPedidos 
(
    1,
    2,
    2
);
