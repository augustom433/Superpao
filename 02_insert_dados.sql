USE padaria_superpao;

INSERT INTO Fornecedor (nome, telefone, contato) VALUES
('Farinhas Bom Jesus', '(11) 3333-4444', 'joao@bomjesus.com'),
('Açúcar Guarani', '(11) 5555-6666', 'maria@guarani.com');

INSERT INTO Funcionario (nome, cargo, salario) VALUES
('Ana Silva', 'Caixa', 2200.00),
('José Santos', 'Padeiro', 2800.00),
('Carlos Menezes', 'Gerente', 4500.00);

INSERT INTO Produto (nome, preco_venda, categoria, estoque_quantidade) VALUES
('Pão Francês 50g', 0.80, 'Pães', 300),
('Bolo de Chocolate', 35.00, 'Bolos', 15),
('Coxinha', 6.50, 'Salgados', 80),
('Sonho', 7.00, 'Doces', 40);

INSERT INTO Ingrediente (nome, unidade_medida, estoque_quantidade, estoque_minimo, fornecedor_id) VALUES
('Farinha de trigo', 'kg', 150.000, 50, 1),
('Açúcar refinado', 'kg', 80.000, 30, 2),
('Fermento biológico', 'kg', 8.500, 5, 1),
('Chocolate em pó', 'kg', 25.000, 10, 2);

INSERT INTO Receita (produto_id, descricao) VALUES
(1, 'Receita padrão de pão francês'),
(2, 'Bolo de chocolate tradicional');

INSERT INTO Receita_Ingrediente (receita_id, ingrediente_id, quantidade_necessaria) VALUES
(1, 1, 1.000), -- 1kg farinha para fazer 100 pães
(1, 3, 0.010), -- 10g fermento
(2, 1, 0.400),
(2, 2, 0.500),
(2, 4, 0.300);

INSERT INTO Venda (valor_total, funcionario_id, forma_pagamento) VALUES
(48.00, 1, 'Pix'),
(85.50, 1, 'Dinheiro'),
(70.00, 2, 'Cartão');

INSERT INTO Item_Venda (venda_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 50, 0.80),
(1, 4, 2, 7.00),
(2, 3, 10, 6.50),
(2, 2, 1, 35.00),
(3, 1, 60, 0.80),
(3, 3, 4, 6.50);
