DATABASE CREATE Loja;

CREATE TABLE Usuario
(
    id int NOT NULL PRIMARY KEY,
    usuario varchar(100) NOT NULL,
    senha varchar(100) NOT NULL,    
    status varchar(100) NOT NULL,
);

CREATE TABLE carrinho
(
    id int NOT NULL PRIMARY KEY,
    sessao int NOT NULL,
    idProduto int NOT NULL,
    produto varchar(80) NOT NULL,
    qtd int NOT NULL,
    preco decimal(12,2) NOT NULL,
);

CREATE TABLE clientes
(
    id int NOT NULL PRIMARY KEY,
    nome varchar(100) NOT NULL,
    email varchar(80) NOT NULL,
    senha varchar(50) NOT NULL,
    Rua varchar(80) NOT NULL,
    cidade varchar(80) NOT NULL,
    bairro varchar(40) NOT NULL,
    cep varchar(10) NOT NULL,
    estado varchar(2) NOT NULL,
);

CREATE TABLE pedidos
(
    id int NOT NULL PRIMARY KEY,
    data_ date NOT NULL,
    idCliente int NOT NULL,
    status_ varchar(80) NOT NULL,
    sessao int NOT NULL,

    CONSTRAINT fk_pedidos_clientes FOREIGN KEY (idCliente) REFERENCES clientes(id),
);

CREATE TABLE categorias
(
    id int NOT NULL PRIMARY KEY,
    categoria varchar(100) NOT NULL,
);

CREATE TABLE produtos
(
    id int NOT NULL PRIMARY KEY,
    idCategoria int NOT NULL,
    produto varchar(80) NOT NULL,
    preco decimal(12,2) NOT NULL,
    quantidade int NOT NULL,
    descricao varchar(80) NOT NULL,
    foto varchar(255) NOT NULL,

    CONSTRAINT fk_produtos_categorias FOREIGN KEY (idCategoria) REFERENCES categorias(id),
);

CREATE TABLE pedidoItens
(
    id int NOT NULL PRIMARY KEY,
    idPedido int NOT NULL,
    idProduto int NOT NULL,
    produto varchar(100) NOT NULL,
    quantidade int NOT NULL,
    valor decimal(12,2) NOT NULL,
    subTotal decimal(12,2) NOT NULL,

    CONSTRAINT fk_pedidoItens_pedidos FOREIGN KEY (idPedido) REFERENCES pedidos(id),
    CONSTRAINT fk_pedidoItens_produtos FOREIGN KEY (idProduto) REFERENCES produtos(id),
);