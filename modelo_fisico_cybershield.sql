-- ============================================================================
-- BANCO DE DADOS: CYBERSHIELD ACADEMY (MODELO FÍSICO - DDL)
-- ============================================================================
CREATE DATABASE IF NOT EXISTS cybershield_db
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE cybershield_db;

CREATE TABLE USUARIOS (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL,
    perfil ENUM('ALUNO', 'ADMIN') NOT NULL DEFAULT 'ALUNO',
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE CURSOS (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    descricao TEXT NOT NULL,
    nivel VARCHAR(30) NOT NULL,
    carga_horaria INT NOT NULL CHECK (carga_horaria > 0),
    preco DECIMAL(10, 2) NOT NULL CHECK (preco >= 0)
) ENGINE=InnoDB;

CREATE TABLE PEDIDOS (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    data_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    valor_total DECIMAL(10, 2) NOT NULL CHECK (valor_total >= 0),
    cupom_aplicado VARCHAR(30) NULL,
    status_pagamento VARCHAR(30) NOT NULL DEFAULT 'PENDENTE',
    CONSTRAINT fk_pedidos_usuario
        FOREIGN KEY (id_usuario) REFERENCES USUARIOS(id_usuario)
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE ITENS_PEDIDO (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_curso INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL CHECK (preco_unitario >= 0),
    CONSTRAINT fk_itens_pedido
        FOREIGN KEY (id_pedido) REFERENCES PEDIDOS(id_pedido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_itens_curso
        FOREIGN KEY (id_curso) REFERENCES CURSOS(id_curso)
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE CONTEUDOS_SEGURANCA (
    id_conteudo INT AUTO_INCREMENT PRIMARY KEY,
    id_autor INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    tipo_conteudo ENUM('DICA', 'FERRAMENTA') NOT NULL,
    categoria VARCHAR(60) NOT NULL,
    resumo TEXT NOT NULL,
    url_oficial VARCHAR(255) NULL,
    CONSTRAINT fk_conteudos_autor
        FOREIGN KEY (id_autor) REFERENCES USUARIOS(id_usuario)
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE INSCRICOES_ALERTA (
    id_inscricao INT AUTO_INCREMENT PRIMARY KEY,
    email_assinante VARCHAR(150) NOT NULL UNIQUE,
    data_inscricao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ativo BOOLEAN NOT NULL DEFAULT TRUE
) ENGINE=InnoDB;
