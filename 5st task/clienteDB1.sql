
CREATE DATABASE clienteDB1;

CREATE TABLE clientes(
    nome_do_cliente varchar(40) NOT NULL ,
    endereco varchar(120) NOT NULL,
    data_ date NOT NULL,
    produto_1 varchar(120) NOT NULL,
    qtdProd_1 int NOT NULL,
    produto_2 varchar(120),
    qtdProd_2 int,
);

INSERT INTO clientes ( nome_do_cliente , endereco , data_ , produto_1 , qtdProd_1 )
VALUES
(
    "Éricles",
    "Rua 1, Casa 3",
    "2019-03-01",
    "HONDA CB 500",
    1
);

INSERT INTO clientes ( nome_do_cliente , endereco , data_ , produto_1 , qtdProd_1 )
VALUES
(
    "Éricles",
    "Rua 1, Casa 3",
    "2019-03-02",
    "HARLEY DAVIDSSON",
    1
);

INSERT INTO clientes
VALUES
(
    "Miguel",
    "Rua 2, Casa 6",
    "2019-03-01",
    "FAZENDA",
    1,
    "LANCHA",
    2
);

INSERT INTO clientes ( nome_do_cliente , endereco , data_ , produto_1 , qtdProd_1 ) 
VALUES
(
    "Lucilene",
    "Rua 3, Casa 4",
    "2019-03-01",
    "LANCHA",
    1
);

INSERT INTO clientes ( nome_do_cliente , endereco , data_ , produto_1 , qtdProd_1 ) 
VALUES
(
    "ROBSON Araújo",
    "Rua 4, Casa 1",
    "2019-03-03",
    "DELL 17″ 16GB RAM",
    1,
);


