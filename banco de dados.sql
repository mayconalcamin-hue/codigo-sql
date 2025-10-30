-- Cria o banco
CREATE DATABASE cafeteria_db;
USE cafeteria_db;

-- Tabela de produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50)
);

-- Insere alguns produtos
INSERT INTO produtos (nome, descricao, preco, categoria)
VALUES 
('Café Expresso', 'Café encorpado feito na hora', 5.00, 'Bebida'),
('Cappuccino', 'Café com leite vaporizado e espuma', 7.50, 'Bebida'),
('Bolo de Cenoura', 'Bolo caseiro com cobertura de chocolate', 6.00, 'Doce');

-- Tabela de pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(100) NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT DEFAULT 1,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Insere alguns pedidos
INSERT INTO pedidos (cliente_nome, produto_id, quantidade)
VALUES 
('Ana Souza', 1, 2),
('João Pereira', 2, 1),
('Marina Lima', 3, 3);
