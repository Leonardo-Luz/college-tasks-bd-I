
CREATE DATABASE clienteDB5;

CREATE TABLE clientes(
    cod int NOT NULL, 
    nome varchar(100) NOT NULL
);

CREATE TABLE pedidos(
    codPedido int NOT NULL,
    codCliente int NOT NULL,
    data_ date NOT NULL,

    CONSTRAINT fk_clientes_itensPedido FOREIGN KEY (codCliente) REFERENCES clientes(cod)         
);

CREATE TABLE produtos(
    codProd int NOT NULL,
    descricao text NOT NULL
);

CREATE TABLE itensPedido(
    codPedido_ int NOT NULL,
    produto int NOT NULL,
    qtd int NOT NULL,

    CONSTRAINT fk_pedidos_itensPedido FOREIGN KEY (codPedido_) REFERENCES pedidos(codPedido), 
    CONSTRAINT fk_produtos_itensPedido FOREIGN KEY (produto) REFERENCES produtos(codProd)         
);

INSERT INTO clientes
(
    1,
    "Éricles"
);

INSERT INTO clientes
(
    2,
    "Miguel"
);

INSERT INTO clientes
(
    3,
    "Lucilene"
);

INSERT INTO clientes 
(
    4,
    "Robson Araujo"
);

INSERT INTO pedidos
(
    1,
    1,
    "2019-03-01",
);

INSERT INTO pedidos
(
    2,
    1,
    "2019-03-02",
);

INSERT INTO pedidos 
(
    3,
    2,
    "2019-03-01",
);

INSERT INTO pedidos 
(
    4,
    3,
    "2019-03-01",
);

INSERT INTO pedidos
(
    5,
    4,
    "2019-03-02",
);

INSERT INTO itensPedido
(
    1,
    1,
    1
);

INSERT INTO itensPedido
(
    2,
    2,
    1
);

INSERT INTO itensPedido
(
    3,
    3,
    1
);

INSERT INTO itensPedido
(
    4,
    4,
    1
);

INSERT INTO itensPedido
(
    5,
    5,
    1
);

INSERT INTO itensPedido
(
    3,
    4,
    2
);

INSERT INTO produtos
(
    1,
    "HONDA CB 500"
);

INSERT INTO produtos
(
    2,
    "HARLEY DAVIDSSON",
);

INSERT INTO produtos
(
    3,
    "FAZENDA"
);

INSERT INTO produtos
(
    4,
    "LANCHA"
);

INSERT INTO produtos
(
    5,
    "DELL 17″ 16GB RAM"
);