---insert editoras---
INSERT INTO editora (nome_editora) VALUES
('Tor Books'),
('Orbit Books'),
('Gollancz'),
('Del Rey'),
('DAW Books'),
('Baen Books'),
('Bantam Spectra'),
('Ace Books'),
('Harper Voyager'),
('Pan Macmillan / Tor UK'),
('Penguin Random House'),
('Suma (Companhia das Letras)'),
('Intrínseca'),
('Rocco'),
('DarkSide Books'),
('Galera Record'),
('Jambô Editora'),
('HarperCollins Brasil'),
('Editora Aleph'),
('Companhia das Letras');

---insert produtos---
INSERT INTO produtos (nome, preco, isbn, id_editora) VALUES
-- Editora 1
('A Canção da Tempestade', '49.90', '9780000000011', 1),
('Sombras do Norte', '59.90', '9780000000012', 1),
('O Herdeiro do Fogo Antigo', '39.90', '9780000000013', 1),

-- Editora 2
('Reinos Partidos', '45.00', '9780000000021', 2),
('Lâminas do Crepúsculo', '55.90', '9780000000022', 2),
('O Eco das Montanhas', '62.90', '9780000000023', 2),

-- Editora 3
('Filhos da Névoa', '42.50', '9780000000031', 3),
('O Último Oráculo', '58.90', '9780000000032', 3),
('Portões de Aço', '35.90', '9780000000033', 3),

-- Editora 4
('O Jardim de Aço', '69.90', '9780000000041', 4),
('Sombras de Vidro', '49.90', '9780000000042', 4),
('A Torre da Chama Azul', '39.90', '9780000000043', 4),

-- Editora 5
('Os Caçadores do Vazio', '57.90', '9780000000051', 5),
('Nômades do Infinito', '48.90', '9780000000052', 5),
('A Cidade Entre Estrelas', '79.90', '9780000000053', 5),

-- Editora 6
('A Filha da Serpente', '44.90', '9780000000061', 6),
('O Guardião das Runas', '52.00', '9780000000062', 6),
('Ritos da Noite Sangrenta', '37.50', '9780000000063', 6),

-- Editora 7
('Eclipse Carmesim', '61.00', '9780000000071', 7),
('Os Três Reis do Vento', '42.00', '9780000000072', 7),
('O Labirinto das Marés', '33.90', '9780000000073', 7),

-- Editora 8
('O Canto das Mariposas', '46.90', '9780000000081', 8),
('Chamas de Areia', '51.90', '9780000000082', 8),
('A Dama do Inverno', '39.50', '9780000000083', 8),

-- Editora 9
('O Cajado Partido', '62.90', '9780000000091', 9),
('O Círculo das Sombras', '47.90', '9780000000092', 9),
('Guerreiros do Pó', '34.90', '9780000000093', 9),

-- Editora 10
('Ascensão de Ferro', '55.90', '9780000000101', 10),
('O Vale dos Gritos', '45.90', '9780000000102', 10),
('A Profecia de Âmbar', '32.90', '9780000000103', 10),

-- Editora 11
('O Rei do Crepúsculo', '68.90', '9780000000111', 11),
('As Ilhas de Prata', '49.00', '9780000000112', 11),
('O Último Arcanista', '61.90', '9780000000113', 11),

-- Editora 12
('O Espelho de Sangue', '44.90', '9780000000121', 12),
('Colheita Sombria', '56.90', '9780000000122', 12),
('Filhos da Lua Nova', '34.50', '9780000000123', 12),

-- Editora 13
('Os Sete Portais', '52.90', '9780000000131', 13),
('A Estrada do Dragão', '63.90', '9780000000132', 13),
('O Príncipe Exilado', '41.50', '9780000000133', 13),

-- Editora 14
('A Lenda do Guardião Negro', '47.00', '9780000000141', 14),
('O Castelo das Vozes', '36.90', '9780000000142', 14),
('As Correntes do Norte', '54.00', '9780000000143', 14),

-- Editora 15
('A Rosa Esquecida', '43.90', '9780000000151', 15),
('Espadas da Aurora', '62.00', '9780000000152', 15),
('O Mártir das Sombras', '39.90', '9780000000153', 15),

-- Editora 16
('O Guerreiro Dourado', '51.00', '9780000000161', 16),
('Os filhos de Tarlon', '58.90', '9780000000162', 16),
('A Noite Rubra', '33.90', '9780000000163', 16),

-- Editora 17
('O Caminho dos Mortos', '49.90', '9780000000171', 17),
('Coroa de Ossos', '59.90', '9780000000172', 17),
('Cidade Afogada', '38.90', '9780000000173', 17),

-- Editora 18
('Reino das Marés', '45.90', '9780000000181', 18),
('A Guardiã do Norte', '57.90', '9780000000182', 18),
('O Livro dos Sussurros', '35.00', '9780000000183', 18),

-- Editora 19
('O Mago do Deserto', '64.90', '9780000000191', 19),
('A Rainha do Poente', '52.90', '9780000000192', 19),
('Sombras sobre Adalor', '39.90', '9780000000193', 19),

-- Editora 20
('A Estrela de Prata', '48.90', '9780000000201', 20),
('As Filhas do Relâmpago', '61.90', '9780000000202', 20),
('O Suspiro do Vento', '34.90', '9780000000203', 20);

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

--- insert pedidos --- 
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

