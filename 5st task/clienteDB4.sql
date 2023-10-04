
CREATE DATABASE clienteDB4;

CREATE TABLE clientes(
    cod int NOT NULL PRIMARY KEY,
    nome varchar(100) NOT NULL
);

CREATE TABLE pedidos(
    codCliente int NOT NULL,
    data_ date NOT NULL,
    produto_1 int NOT NULL,
    produto_2 int,

    CONSTRAINT fk_pedidos_clientes FOREIGN KEY (codCliente) REFERENCES clientes(cod),
    CONSTRAINT fk_pedidos_itensPedido FOREIGN KEY (produto_1) REFERENCES itensPedido(codItem),
    CONSTRAINT fk_pedidos_itensPedido FOREIGN KEY (produto_2) REFERENCES itensPedido(codItem)      

);

CREATE TABLE itensPedido(
    codItem int NOT NULL PRIMARY KEY, 
    produto int NOT NULL,
    qtd int NOT NULL,

    CONSTRAINT fk_itensPedido_produtos FOREIGN KEY (produto) REFERENCES produtos(codProd)        
);

CREATE TABLE produtos(
    codProd int NOT NULL PRIMARY KEY,
    descricao text NOT NULL
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

INSERT INTO pedidos ( codCliente, data_ , item_1)
(
    1,
    "2019-03-01",
    1
);

INSERT INTO pedidos ( codCliente, data_ , item_1)
(
    1,
    "2019-03-02",
    2
);

INSERT INTO pedidos ( codCliente, data_ , item_1, item_2 )
(
    2,
    "2019-03-01",
    3,
    6
);

INSERT INTO pedidos ( codCliente, data_ , item_1 )
(
    3,
    "2019-03-01",
    4
);

INSERT INTO pedidos ( codCliente, data_ , item_1 )
(
    4,
    "2019-03-02",
    5
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
    6,
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
