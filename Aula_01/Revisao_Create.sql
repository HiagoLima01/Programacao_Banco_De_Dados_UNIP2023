CREATE DATABASE IF NOT EXISTS lab_01;

USE lab_01;

CREATE TABLE IF NOT EXISTS Fatura(
	numFatura INT NOT NULL PRIMARY KEY,
	codCliente INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Produto(
	codProduto INT NOT NULL PRIMARY KEY,
    descricao VARCHAR(300)
);

CREATE TABLE IF NOT EXISTS Cliente (
	codCliente INT NOT NULL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    credito DECIMAL (9,2) NOT NULL,
    tipo CHAR(1) NOT NULL
		CONSTRAINT tipoCliente CHECK(tipo = "E" or "N"),
    CPF CHAR(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS Fatura(
	numFatura INT NOT NULL,
	codProduto INT NOT NULL,
    quantidade int(6) NOT NULL,
    valor DECIMAL (9,2) NOT NULL,
    
    PRIMARY KEY(numFatura,codFatura)
);
    


    

