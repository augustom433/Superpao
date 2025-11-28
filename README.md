# Padaria SuperPão - Sistema de Gestão

Projeto acadêmico de modelagem de banco de dados para uma padaria.

## Funcionalidades
- Controle de produtos, ingredientes e receitas
- Registro de vendas e itens vendidos
- Gestão de estoque e fornecedores
- Cadastro de funcionários

## Diagrama ER
<img width="1307" height="509" alt="image" src="https://github.com/user-attachments/assets/00ee09e4-a400-4e59-bfd4-3203533230e4" />


## Scripts SQL
1. `01_create_tables.sql` → Criação das tabelas
2. `02_insert_dados.sql` → Povoamento inicial
3. `03_consultas_exemplos.sql` → Consultas ú4. `04_updates_e_deletes.sql` → Atualizações e exclusões

## Como executar
```bash
mysql -u seu_usuario -p < 01_create_tables.sql
mysql -u seu_usuario -p < 02_insert_dados.sql
mysql -u seu_usuario -p padaria_superpao < 03_consultas_exemplos.sql
