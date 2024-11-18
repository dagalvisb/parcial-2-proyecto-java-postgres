CREATE TABLE cuentas (
	id_cuenta SERIAL PRIMARY KEY,
	numero_cuenta VARCHAR(20),
	tipo_cuenta VARCHAR(30),
	saldo_cuenta DECIMAL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS Clientes (
	id_cliente SERIAL PRIMARY KEY,
	cedula_cliente VARCHAR(20) NOT NULL,
	nombre_cliente VARCHAR(50) NOT NULL
);

ALTER TABLE Cuentas
ADD COLUMN fk_cliente_cuenta BIGINT, 
ADD CONSTRAINT fk_cliente_cuenta 
	FOREIGN KEY (fk_cliente_cuenta) 
		REFERENCES Clientes(id_cliente);

INSERT INTO cuentas (numero_cuenta, tipo_cuenta, saldo_cuenta)
VALUES ('1234-3', 'Ahorros', 100000),
		('54353-1', 'Corriente', 0);

INSERT INTO clientes (nombre_cliente, cedula_cliente)
VALUES ('Daniel Galvis', '1053814829'),
		('Cristian Echeverri', '12387465389');