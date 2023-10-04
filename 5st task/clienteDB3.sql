
CREATE DATABASE clienteDB3;

CREATE TABLE clientes(
    cod int NOT NULL PRIMARY KEY,
    nome varchar(100) NOT NULL
);

CREATE TABLE pedidos(
    codCliente int NOT NULL,
    data_ date NOT NULL,
    item_1 int NOT NULL,
    item_2 int,

    CONSTRAINT fk_clientes_itensPedido FOREIGN KEY (codCliente) REFERENCES clientes(cod),
    CONSTRAINT fk_clientes_itensPedido FOREIGN KEY (item_1) REFERENCES itensPedido(codItem),
    CONSTRAINT fk_clientes_itensPedido FOREIGN KEY (item_2) REFERENCES itensPedido(codItem)
);

CREATE TABLE itensPedido(
    codItem int NOT NULL PRIMARY KEY,
    produto varchar(120) NOT NULL,
    qtd int NOT NULL,
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
    "HONDA CB 500",
    1
);

INSERT INTO itensPedido
(
    2,
    "HARLEY DAVIDSSON",
    1
);

INSERT INTO itensPedido
(
    3,
    "FAZENDA",
    1
);

INSERT INTO itensPedido
(
    4,
    "LANCHA",
    1
);

INSERT INTO itensPedido
(
    5,
    "DELL 17″ 16GB RAM",
    1
);

INSERT INTO itensPedido
(
    6,
    "LANCHA",
    1
);