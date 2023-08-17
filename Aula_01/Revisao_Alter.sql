ALTER TABLE cliente
	ADD COLUMN historico VARCHAR(50) NOT NULL,
    /*Change muda tudo que for pedido*/
    CHANGE COLUMN nome nomeCliente VARCHAR(30) NOT NULL;
    
ALTER TABLE cliente
	DROP COLUMN credito;
    
ALTER TABLE fatura
	RENAME TO pedido;

ALTER TABLE pedido
	ADD COLUMN dataPedido DATE;

ALTER TABLE itensFatura
	RENAME TO itensPedido;

ALTER TABLE produto
	MODIFY COLUMN descricao VARCHAR(30);