<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
</head>
<body style="font-family: Arial, sans-serif; line-height: 1.6; padding: 20px;">

<div align="center">
    <h1 style="color:#228B22;">Sistema de Banco de Dados – Livraria Goodreads</h1>
    <h3>Projeto Acadêmico – Faculdade Cruzeiro do Sul</h3>
</div>

<hr>

<h2>Sobre o Projeto</h2>
<p>
Este projeto prático envolveu a modelagem e implementação completa de um sistema de banco de dados para uma livraria fictícia inspirada no Goodreads. O objetivo principal foi demonstrar a aplicação de conceitos fundamentais de SQL em um cenário realista de vendas e gestão de livraria.
</p>
<p>
Durante as aulas e o desenvolvimento, trabalhei com operações essenciais de banco de dados como <strong>CREATE</strong>, <strong>INSERT</strong>, <strong>UPDATE</strong>, <strong>DELETE</strong> e <strong>SELECT</strong>, sempre com foco em criar um sistema funcional e organizado.
</p>

<hr>

<h2>Estrutura do Banco de Dados</h2>
<p>O sistema foi estruturado em seis tabelas principais que se relacionam para representar todo o fluxo de uma livraria:</p>
<ul>
    <li><strong>CLIENTE</strong> - Cadastro de clientes com CPF único</li>
    <li><strong>PRODUTOS</strong> - Catálogo completo de livros disponíveis</li>
    <li><strong>EDITORA</strong> - Editoras responsáveis pelas publicações</li>
    <li><strong>VENDEDOR</strong> - Equipe de vendas da livraria</li>
    <li><strong>PEDIDOS</strong> - Registro de vendas realizadas</li>
    <li><strong>PEDIDOITENS</strong> - Detalhamento dos itens de cada pedido</li>
</ul>
<p>Essa estrutura permite gerenciar desde o cadastro de livros e clientes até o processamento completo das vendas.</p>

<hr>

<h2>CREATE TABLE – Criação das Tabelas</h2>
<p>Defini cuidadosamente cada tabela para garantir que os relacionamentos fossem consistentes e que os dados fossem armazenados com integridade. Por exemplo, cada livro está vinculado a uma editora, e cada pedido está associado a um cliente e um vendedor específico.</p>

<hr>

<h2>INSERT – Inserção de Dados</h2>
<p>
Inseri uma variedade maior de dados para simular um ambiente real:
</p>
<ul>
    <li><strong>60 livros</strong> de fantasia com títulos criativos</li>
    <li><strong>20 editoras</strong> nacionais e internacionais</li>
    <li><strong>27 clientes</strong> cadastrados</li>
    <li><strong>7 vendedores</strong> na equipe</li>
    <li><strong>25 pedidos</strong> realizados</li>
    <li><strong>Detalhamento completo</strong> de todos os itens vendidos</li>
</ul>

<hr>

<h2>UPDATE – Atualização de Dados</h2>
<p>
No dia a dia na livraria, precisa-se ajustar informações regularmente. Veja alguns exemplos reais:
</p>
<pre style="background:#f4f4f4; padding:10px; border-radius:8px;"><code>-- O livro "Sombras de Vidro" teve um aumento de preço
UPDATE produtos
SET preco = 5490  -- R$ 54,90
WHERE nome = 'Sombras de Vidro';

-- A cliente Ana Paula mudou seu telefone
UPDATE cliente
SET telefone = '(11)98888-1234'
WHERE nome = 'Ana Paula Mendes';

-- Correção no preço total de um pedido específico
UPDATE pedidos
SET preco_total = 9200
WHERE id_pedidos = 15;</code></pre>

<hr>

<h2>DELETE – Remoção de Dados</h2>
<p>
Às vezes é preciso remover registros, sempre com cuidado para não afetar dados importantes:
</p>
<pre style="background:#f4f4f4; padding:10px; border-radius:8px;"><code>-- Remover um pedido que foi cancelado antes do processamento
DELETE FROM pedidoitens
WHERE id_pedidos = 5;

DELETE FROM pedidos
WHERE id_pedidos = 5;

-- Remover um livro que saiu de catálogo e não tem vendas
DELETE FROM produtos
WHERE id_produtos = 25
AND NOT EXISTS (
    SELECT 1 FROM pedidoitens WHERE id_produtos = 25
);</code></pre>

<hr>

<h2>SELECT – Consultando Nossa Livraria</h2>
<p>
As consultas são o coração do sistema - nos permitem extrair insights valiosos sobre nossas vendas, clientes e estoque.
</p>

<h3>Consultas Mais Úteis do Sistema:</h3>
<pre style="background:#f4f4f4; padding:10px; border-radius:8px;"><code>-- 1. TOP 5 LIVROS MAIS VENDIDOS
SELECT p.nome AS Livro, 
       e.nome_editora AS Editora,
       SUM(pi.quantidade) AS Total_Vendido,
       SUM(pi.quantidade * pi.preco_unitario) / 100.0 AS Receita_Total_R$
FROM produtos p
JOIN pedidoitens pi ON p.id_produtos = pi.id_produtos
JOIN editora e ON p.id_editora = e.id_editora
GROUP BY p.id_produtos
ORDER BY Total_Vendido DESC
LIMIT 5;

-- 2. CLIENTES MAIS FREQUENTES (QUEM MAIS COMPROU)
SELECT c.nome AS Cliente,
       COUNT(DISTINCT ped.id_pedidos) AS Total_Pedidos,
       SUM(ped.preco_total) / 100.0 AS Total_Gasto_R$
FROM cliente c
JOIN pedidos ped ON c.id_cliente = ped.id_cliente
GROUP BY c.id_cliente
ORDER BY Total_Pedidos DESC
LIMIT 10;

-- 3. VENDEDORES DO MÊS (FEVEREIRO 2025)
SELECT v.nome_vendedor AS Vendedor,
       COUNT(ped.id_pedidos) AS Vendas_Realizadas,
       SUM(ped.preco_total) / 100.0 AS Volume_Vendas_R$
FROM vendedor v
JOIN pedidos ped ON v.id_vendedor = ped.id_vendedor
WHERE ped.data_pedido LIKE '2025-02-%'
GROUP BY v.id_vendedor
ORDER BY Volume_Vendas_R$ DESC;

-- 4. PEDIDOS COM DETALHES COMPLETOS (dos primeiros 10 pedidos)
SELECT ped.id_pedidos AS Pedido_N,
       ped.data_pedido AS Data_Compra,
       c.nome AS Cliente,
       v.nome_vendedor AS Vendedor,
       GROUP_CONCAT(p.nome || ' (x' || pi.quantidade || ')', ', ') AS Itens,
       ped.preco_total / 100.0 AS Total_R$
FROM pedidos ped
JOIN cliente c ON ped.id_cliente = c.id_cliente
JOIN vendedor v ON ped.id_vendedor = v.id_vendedor
JOIN pedidoitens pi ON ped.id_pedidos = pi.id_pedidos
JOIN produtos p ON pi.id_produtos = p.id_produtos
WHERE ped.id_pedidos BETWEEN 1 AND 10
GROUP BY ped.id_pedidos
ORDER BY ped.data_pedido DESC;

-- 5. EDITORAS MAIS POPULARES
SELECT e.nome_editora AS Editora,
       COUNT(DISTINCT p.id_produtos) AS Livros_no_Catalogo,
       COUNT(DISTINCT pi.id_pedidos) AS Vendas_Realizadas
FROM editora e
JOIN produtos p ON e.id_editora = p.id_editora
LEFT JOIN pedidoitens pi ON p.id_produtos = pi.id_produtos
GROUP BY e.id_editora
ORDER BY Vendas_Realizadas DESC;

-- 6. PEDIDO MAIS CARO
SELECT ped.id_pedidos AS Pedido,
       c.nome AS Cliente,
       ped.data_pedido AS Data,
       ped.preco_total / 100.0 AS Valor_Total_R$,
       COUNT(pi.id_item) AS Quantidade_Itens
FROM pedidos ped
JOIN cliente c ON ped.id_cliente = c.id_cliente
JOIN pedidoitens pi ON ped.id_pedidos = pi.id_pedidos
GROUP BY ped.id_pedidos
ORDER BY ped.preco_total DESC
LIMIT 1;

-- 7. LIVROS POR FAIXA DE PRECO (PARA PROMOCOES)
SELECT 
    CASE 
        WHEN preco < 4000 THEN 'Ate R$ 40'
        WHEN preco BETWEEN 4000 AND 6000 THEN 'R$ 40-60'
        WHEN preco BETWEEN 6000 AND 8000 THEN 'R$ 60-80'
        ELSE 'Acima de R$ 80'
    END AS Faixa_Preco,
    COUNT(*) AS Quantidade_Livros,
    GROUP_CONCAT(nome, ', ') AS Exemplos
FROM produtos
GROUP BY Faixa_Preco
ORDER BY MIN(preco);

-- 8. CONSULTA SIMPLES: TODOS OS CLIENTES CADASTRADOS
SELECT id_cliente, nome, telefone, cpf
FROM cliente
ORDER BY nome;

-- 9. LIVROS COM PRECO ABAIXO DE R$ 50
SELECT nome, preco/100.0 AS Preco_R$, nome_editora
FROM produtos p
JOIN editora e ON p.id_editora = e.id_editora
WHERE preco < 5000
ORDER BY preco;

-- 10. ITENS DE UM PEDIDO ESPECIFICO (pedido 3)
SELECT p.nome AS Livro, 
       pi.quantidade, 
       pi.preco_unitario/100.0 AS Preco_Unitario_R$,
       (pi.quantidade * pi.preco_unitario)/100.0 AS Subtotal_R$
FROM pedidoitens pi
JOIN produtos p ON pi.id_produtos = p.id_produtos
WHERE pi.id_pedidos = 3;</code></pre>

<hr>

<h2>Como o Sistema Funciona na Pratica</h2>
<p>Imagine um cliente chegando na livraria:</p>
<ol>
    <li>O cliente e identificado no sistema (ou cadastrado, se for novo)</li>
    <li>O vendedor registra os livros escolhidos em um novo pedido</li>
    <li>Cada item do pedido e detalhado na tabela PEDIDOITENS</li>
    <li>O sistema calcula automaticamente o valor total</li>
    <li>A gerencia pode acompanhar tudo: vendas por vendedor, livros mais populares, clientes fieis</li>
</ol>

<hr>

<h2>Insights que Conseguimos Extrair</h2>
<ul>
    <li>Saber quais generos/editoras vendem mais</li>
    <li>Identificar nossos clientes mais valiosos</li>
    <li>Acompanhar o desempenho de cada vendedor</li>
    <li>Gerenciar o estoque com base nas vendas historicas</li>
    <li>Criar promocoes direcionadas baseadas em preferencias</li>
</ul>

<hr>

<h2>Autor</h2>
<p><strong>Isaque Peres Lopes da Silva</strong><br>
Ciencia da Computacao – Cruzeiro do Sul<br>
