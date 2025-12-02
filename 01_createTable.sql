----tabela cliente----
Create table cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(50) NOT NULL,
    telefone TEXT(15),
    cpf TEXT(11) UNIQUE
    
);
----tabela vendedor----
create table vendedor (
    id_vendedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_vendedor TEXT(50) NOT NULL,
    cpf_vendedor TEXT(11)UNIQUE
       
);
----tabela pedidos----
CREATE TABLE pedidos(
    id_pedidos INTEGER PRIMARY KEY AUTOINCREMENT,
    preco_total INTEGER,
    data_pedido TEXT,
    id_cliente INTEGER,
    id_vendedor INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);
----tabela editora----
CREATE TABLE editora (
    id_editora INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_editora TEXT(50) NOT NULL UNIQUE
);
----tabela produtos----
CREATE TABLE produtos(
    id_produtos INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(50),
    preco INTEGER NOT NULL,
    isbn TEXT(50) UNIQUE NOT NULL,
    id_editora INTEGER,
    FOREIGN KEY (id_editora) References editora(id_editora)
);
----tabela pedidoitens----
CREATE TABLE pedidoitens(
    id_item INTEGER PRIMARY KEY AUTOINCREMENT,
    quantidade INTEGER NOT NULL,
    preco_unitario INTEGER NOT NULL,
    id_pedidos INTEGER,   
    id_produtos INTEGER,   
    FOREIGN KEY (id_pedidos) REFERENCES pedidos(id_pedidos),    
    FOREIGN KEY (id_produtos) REFERENCES produtos(id_produtos),
    UNIQUE(id_produtos, id_pedidos)
);