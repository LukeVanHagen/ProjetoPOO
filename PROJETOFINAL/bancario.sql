CREATE TABLE cliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(255) NOT NULL
);

CREATE TABLE conta (
  id INT PRIMARY KEY AUTO_INCREMENT,
  numeroconta INT NOT NULL,
  saldo DECIMAL(10, 2) NOT NULL,
  tipoConta VARCHAR(20) NOT NULL,
  status BOOLEAN NOT NULL,
  dataAbertura DATETIME NOT NULL,
  cliente_id INT,
  FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

CREATE TABLE registro_transacao (
  id INT PRIMARY KEY AUTO_INCREMENT,
  valor DECIMAL(10, 2) NOT NULL,
  tipo VARCHAR(20) NOT NULL,
  data DATETIME NOT NULL,
  conta_id INT,
  FOREIGN KEY (conta_id) REFERENCES conta(id)
);
