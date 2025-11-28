-- 1. Produtos mais vendidos
SELECT p.nome, SUM(iv.quantidade) AS total_vendido
FROM Produto p
JOIN Item_Venda iv ON p.produto_id = iv.produto_id
GROUP BY p.produto_id
ORDER BY total_vendido DESC;

-- 2. Vendas do dia atual
SELECT v.venda_id, v.data_venda, f.nome AS funcionario, v.valor_total
FROM Venda v
JOIN Funcionario f ON v.funcionario_id = f.funcionario_id
WHERE DATE(v.data_venda) = CURDATE();

-- 3. Ingredientes com estoque baixo
SELECT nome, estoque_quantidade, estoque_minimo
FROM Ingrediente
WHERE estoque_quantidade <= estoque_minimo;

-- 4. Receita do Bolo de Chocolate
SELECT p.nome AS produto, i.nome AS ingrediente, ri.quantidade_necessaria, i.unidade_medida
FROM Receita r
JOIN Produto p ON r.produto_id = p.produto_id
JOIN Receita_Ingrediente ri ON r.receita_id = ri.receita_id
JOIN Ingrediente i ON ri.ingrediente_id = i.ingrediente_id
WHERE p.nome LIKE '%Chocolate%';

-- 5. Faturamento por funcionário no mês
SELECT f.nome, COUNT(v.venda_id) AS vendas, SUM(v.valor_total) AS total_faturado
FROM Funcionario f
LEFT JOIN Venda v ON f.funcionario_id = v.funcionario_id
WHERE MONTH(v.data_venda) = MONTH(CURDATE())
GROUP BY f.funcionario_id;
