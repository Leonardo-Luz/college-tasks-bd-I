
CREATE DATABASE clienteDB2;

CREATE TABLE clientes(
    cod int NOT NULL PRIMARY KEY,
    nome varchar(100) NOT NULL,
    endereco varchar(160) NOT NULL
);

CREATE TABLE pedidos(
    codCliente int NOT NULL,
    data_ date NOT NULL,
    produto_1 varchar(120) NOT NULL,
    qtdProd_1 int NOT NULL,
    produto_2 varchar(120),
    qtdProd_2 int,

    CONSTRAINT fk_pedidos_clientes FOREIGN KEY (codCliente) REFERENCES clientes(cod)    
);

INSERT INTO clientes
(
    1,
    "Éricles",
    "Rua 1, Casa 3"
);

INSERT INTO clientes
(
    2,
    "Miguel",
    "Rua 2, Casa 6"
);

INSERT INTO clientes
(
    3,
    "Lucilene",
    "Rua 3, Casa 4"
);

INSERT INTO clientes 
(
    4,
    "Robson Araujo",
    "Rua 4, Casa 1"
);

INSERT INTO pedidos ( data_ , produto_1 , qtdProd_1)
(
    "2019-03-01",
    "HONDA CB 500",
    1
);

INSERT INTO pedidos ( data_ , produto_1 , qtdProd_1)
(
    "2019-03-02",
    "HARLEY DAVIDSSON",
    1
);

INSERT INTO pedidos ( data_ , produto_1 , qtdProd_1 , produto_2 , qtdProd_2 )
(
    "2019-03-01",
    "FAZENDA",
    1,
    "LANCHA",
    2
);

INSERT INTO pedidos ( data_ , produto_1 , qtdProd_1)
(
    "2019-03-01",
    "LANCHA",
    1
);

INSERT INTO pedidos ( data_ , produto_1 , qtdProd_1)
(
    "2019-03-02",
    "DELL 17″ 16GB RAM",
    1
);