---insert clientes---
INSERT INTO cliente (nome, telefone, cpf) VALUES
('Ana Paula Mendes', '(11)91234-0001', '12345678901'),
('Carlos Henrique Souza', '(21)92345-0002', '12345678902'),
('Mariana Oliveira', '(31)99822-0003', '12345678903'),
('João Pedro Lima', '(41)99144-0004', '12345678904'),
('Fernanda Castro', '(51)98213-0005', '12345678905'),
('Ricardo Almeida', '(71)99422-0006', '12345678906'),
('Juliana Barbosa', '(19)98123-0007', '12345678907'),
('Thiago Martins', '(85)99211-0008', '12345678908'),
('Patrícia Goes', '(62)99741-0009', '12345678909'),
('Eduardo Fernandes', '(98)99128-0010', '12345678910'),
('Sabrina Carvalho', '(11)91234-0011', '12345678911'),
('Gustavo Rocha', '(21)91345-0012', '12345678912'),
('Amanda Torres', '(31)99822-0013', '12345678913'),
('Lucas Santana', '(41)99144-0014', '12345678914'),
('Beatriz Ribeiro', '(51)98213-0015', '12345678915'),
('Matheus Correia', '(71)99422-0016', '12345678916'),
('Camila Costa', '(19)98123-0017', '12345678917'),
('André Luiz Silva', '(85)99211-0018', '12345678918'),
('Larissa Cardoso', '(62)99741-0019', '12345678919'),
('Felipe Duarte', '(98)99128-0020', '12345678920'),
('Renata Azevedo', '(11)91234-0021', '12345678921'),
('Marcelo Farias', '(21)91345-0022', '12345678922'),
('Isabela Nunes', '(31)99822-0023', '12345678923'),
('Vitor Mendes', '(41)99144-0024', '12345678924'),
('Priscila Moraes', '(51)98213-0025', '12345678925'),
('Diego Tavares', '(71)99422-0026', '12345678926'),
('Bruna Ferreira', '(19)98123-0027', '12345678927');

---insert vendedores---
INSERT INTO vendedor (nome_vendedor, cpf_vendedor) VALUES
('Marcos Vinicius Barbosa', '98765432101'),
('Juliana Cristina Teles', '98765432102'),
('André Luiz Fagundes', '98765432103'),
('Carolina Ribeiro Duarte', '98765432104'),
('Fábio Augusto Menezes', '98765432105'),
('Renata Martins Cardoso', '98765432106'),
('Thiago Moreira Campos', '98765432107');

---insert pedidos---
INSERT INTO pedidos (id_cliente, id_vendedor, preco_total) VALUES
(5, 2, 142),     
(12, 4, 189),    
(3, 1, 75),      
(21, 6, 210),    
(8, 3, 98),      
(14, 7, 165),    
(27, 5, 120),    
(19, 2, 355),    
(2, 4, 84),     
(10, 1, 265);
    
--- insert pedido---
INSERT INTO pedidos (preco_total, id_cliente, id_vendedor, data_pedido) VALUES
(8700, 5, 2, '2025-02-11'),
(12900, 12, 1, '2025-02-11'),
(5400, 3, 6, '2025-02-12'),
(16200, 18, 4, '2025-02-12'),
(7800, 1, 7, '2025-02-13'),
(9600, 22, 3, '2025-02-13'),
(4500, 9, 5, '2025-02-13'),
(17400, 7, 2, '2025-02-14'),
(6300, 11, 4, '2025-02-14'),
(22000, 6, 1, '2025-02-14'),
(8900, 14, 6, '2025-02-15'),
(10400, 16, 3, '2025-02-15'),
(7200, 2, 7, '2025-02-15'),
(19500, 20, 5, '2025-02-16'),
(6800, 4, 2, '2025-02-16');

--- insert pedido itens---
INSERT INTO pedidoitens (quantidade, preco_unitario, id_pedidos, id_produtos) VALUES
-- Pedido 11
(1, 4500, 11, 1),
(1, 4200, 11, 5),

-- Pedido 12
(2, 4300, 12, 7),
(1, 4300, 12, 4),

-- Pedido 13
(1, 5400, 13, 3),

-- Pedido 14
(2, 5400, 14, 6),
(1, 5400, 14, 10),

-- Pedido 15
(1, 3900, 15, 2),
(1, 3900, 15, 8),

-- Pedido 16
(2, 4800, 16, 9),

-- Pedido 17
(1, 4500, 17, 12),

-- Pedido 18
(2, 5800, 18, 15),
(1, 5800, 18, 11),

-- Pedido 19
(1, 3300, 19, 3),
(1, 3000, 19, 14),

-- Pedido 20
(2, 11000, 20, 20),

-- Pedido 21
(1, 4400, 21, 17),
(1, 4500, 21, 2),

-- Pedido 22
(2, 5200, 22, 19),

-- Pedido 23
(2, 3600, 23, 13),

-- Pedido 24
(1, 6900, 24, 16),
(1, 12600, 24, 18),

-- Pedido 25
(2, 3400, 25, 6);

