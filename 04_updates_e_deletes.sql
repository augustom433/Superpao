-- UPDATES
UPDATE Produto SET preco_venda = 0.90 WHERE nome = 'Pão Francês 50g';
UPDATE Ingrediente SET estoque_quantidade = 45.500 WHERE nome = 'Farinha de trigo';
UPDATE Funcionario SET salario = 5000.00 WHERE cargo = 'Gerente';

-- DELETES
DELETE FROM Item_Venda WHERE venda_id = 2 AND produto_id = 3; -- remove coxinha da venda 2
DELETE FROM Venda WHERE venda_id = 2; -- remove venda inteira (cascata remove itens)
DELETE FROM Produto WHERE produto_id = 4 AND estoque_quantidade = 0; -- remove produto sem estoque
