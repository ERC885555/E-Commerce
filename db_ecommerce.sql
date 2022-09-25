-- -----------------------------------------------------
-- Schema db_ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_ecommerce` DEFAULT CHARACTER SET utf8 ;
USE `db_ecommerce` ;

-- criando a tabela de frete
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`frete` (
  `id_frete` INT NOT NULL AUTO_INCREMENT,
  `cep_inicial` VARCHAR(8) NOT NULL,
  `cep_final` VARCHAR(8) NOT NULL,
  `valor_frete` FLOAT NOT NULL,
  PRIMARY KEY (`id_frete`))
ENGINE = InnoDB;

-- inserindo dados na tabela frete por range de cep
INSERT INTO `db_ecommerce`.`frete` (cep_inicial, cep_final, valor_frete) 
	VALUES 	('00000000', '11111111', 10),
			('11111112', '22222222', 20),
            ('22222223', '33333333', 30),
            ('33333334', '44444444', 40),
            ('44444445', '55555555', 50),
            ('55555556', '66666666', 60),
            ('66666667', '77777777', 70),
            ('77777778', '88888888', 80),
            ('88888889', '99999999', 90);
            
-- criando a tabela tipo_logradouro
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`tipo_logradouro` (
  `id_tipo_logradouro` INT NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_tipo_logradouro`))
ENGINE = InnoDB;

-- inserindo dados na tabela tipo_logradouro
INSERT INTO `db_ecommerce`.`tipo_logradouro` (tipo_logradouro)
	VALUES	('Rua'),
			('Avenida'),
            ('Alameda'),
            ('Travessa');
            
-- criando a tabela tipo_enderecco            
  CREATE TABLE IF NOT EXISTS `db_ecommerce`.`tipo_endereco` (
  `id_tipo_endereco` INT NOT NULL AUTO_INCREMENT,
  `tipo_endereco` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_tipo_endereco`))
ENGINE = InnoDB;

-- inserindo dados na tabela tipo_endereco
INSERT INTO `db_ecommerce`.`tipo_endereco` (tipo_endereco)
	VALUES	('Principal'),
			('Contato'),
            ('Cobrança'),
            ('Fornecedor');
            
-- criando a tabela tipo_cliente
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`tipo_cliente` (
  `id_tipo_cliente` INT NOT NULL AUTO_INCREMENT,
  `tipo_cliente` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_tipo_cliente`))
ENGINE = InnoDB;

-- inserindo dados na tabela tipo_cliente
INSERT INTO `db_ecommerce`.`tipo_cliente` (tipo_cliente)
	VALUES 	('Pessoa Física'),
			('Pessoa Jurídica');

-- criando a tabela estado
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`estado` (
  `id_estado` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `sigla` CHAR(2) NOT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB;

-- inserindo dados na tabela estado
INSERT INTO `db_ecommerce`.`estado` (nome,sigla)
	VALUES	('Acre', 'AC'),
			('Alagoas', 'AL'),
			('Amapá', 'AP'),
			('Amazonas', 'AM'),
			('Bahia', 'BA'),
			('Ceará', 'CE'),
			('Distrito Federal', 'DF'),
			('Espírito Santo', 'ES'),
			('Goiás', 'GO'),
			('Maranhão', 'MA'),
			('Mato Grosso', 'MT'),
			('Mato Grosso do Sul', 'MS'),
			('Minas Gerais', 'MG'),
			('Pará', 'PA'),
			('Paraíba', 'PB'),
			('Paraná', 'PR'),
			('Pernambuco', 'PE'),
			('Piauí', 'PI'),
			('Rio de Janeiro', 'RJ'),
			('Rio Grande do Norte', 'RN'),
			('Rio Grande do Sul', 'RS'),
			('Rondônia', 'RO'),
			('Roraima', 'RR'),
			('Santa Catarina', 'SC'),
			('São Paulo', 'SP'),
			('Sergipe', 'SE'),
			('Tocantins', 'TO');
            
-- criando a tabela pais
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pais` (
  `id_pais` INT NOT NULL AUTO_INCREMENT,
  `pais` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB;

-- inserindo dados na tabela pais
INSERT INTO `db_ecommerce`.`pais` (pais)
	VALUES	('Afeganistão'),
			('África do Sul'),
			('Albânia'),
			('Alemanha'),
			('Andorra'),
			('Angola'),
			('Antiga e Barbuda'),
			('Arábia Saudita'),
			('Argélia'),
			('Argentina'),
			('Arménia'),
			('Austrália'),
			('Áustria'),
			('Azerbaijão'),
			('Bahamas'),
			('Bangladexe'),
			('Barbados'),
			('Barém'),
			('Bélgica'),
			('Belize'),
			('Benim'),
			('Bielorrússia'),
			('Bolívia'),
			('Bósnia e Herzegovina'),
			('Botsuana'),
			('Brasil'),
			('Brunei'),
			('Bulgária'),
			('Burquina Faso'),
			('Burúndi'),
			('Butão'),
			('Cabo Verde'),
			('Camarões'),
			('Camboja'),
			('Canadá'),
			('Catar'),
			('Cazaquistão'),
			('Chade'),
			('Chile'),
			('China'),
			('Chipre'),
			('Colômbia'),
			('Comores'),
			('Congo-Brazzaville'),
			('Coreia do Norte'),
			('Coreia do Sul'),
			('Cosovo'),
			('Costa do Marfim'),
			('Costa Rica'),
			('Croácia'),
			('Cuaite'),
			('Cuba'),
			('Dinamarca'),
			('Dominica'),
			('Egito'),
			('Emirados Árabes Unidos'),
			('Equador'),
			('Eritreia'),
			('Eslováquia'),
			('Eslovénia'),
			('Espanha'),
			('Essuatíni'),
			('Estado da Palestina'),
			('Estados Unidos');

-- criando a tabela pedido_status
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pedido_status` (
  `id_pedido_status` INT NOT NULL AUTO_INCREMENT,
  `pedido_status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pedido_status`))
ENGINE = InnoDB;

-- inserindo dados na tabela pedido_status
INSERT INTO `db_ecommerce`.`pedido_status` (pedido_status)
	VALUES	('Cancelado'),
			('Em Processamento'),
            ('Pago'),
            ('Em Separação'),
            ('Enviado'),
            ('Entregue');
            
 -- criando a tabela categoria
 CREATE TABLE IF NOT EXISTS `db_ecommerce`.`categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;

-- inserindo dados na tabela categoria
INSERT INTO `db_ecommerce`.`categoria` (categoria)
	VALUES	('Calçados'),
			('Eletrônicos'),
            ('Eletrodomésticos'),
            ('Petshop'),
            ('Vestimenta'),
            ('Acessórios'),
            ('Alimentos');

-- criando a tabela pagamento_tipo
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pagamento_tipo` (
  `id_pagamento_tipo` INT NOT NULL AUTO_INCREMENT,
  `pagamento_tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pagamento_tipo`))
ENGINE = InnoDB;

-- inserindo dados na tabela pagamento_tipo
INSERT INTO `db_ecommerce`.`pagamento_tipo` (pagamento_tipo)
	VALUES	('Crédito'),
			('Débito'),
            ('Boleto'),
            ('PIX');


-- criando a tabela endereco
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`endereco` (
  `id_endereco` INT NOT NULL AUTO_INCREMENT,
  `endereco_id_tipo_logradouro` INT NOT NULL,
  `endereco_id_tipo_endereco` INT NOT NULL,
  `logradouro` VARCHAR(120) NOT NULL,
  `numero` VARCHAR(20) NOT NULL,
  `complemento` VARCHAR(25) NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(8) NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `endereco_id_estado` INT NOT NULL,
  `endereco_id_pais` INT NOT NULL,
  PRIMARY KEY (`id_endereco`),
  INDEX `fk_endereco_tipo_logradouro1_idx` (`endereco_id_tipo_logradouro` ASC) VISIBLE,
  INDEX `fk_endereco_tipo_endereco1_idx` (`endereco_id_tipo_endereco` ASC) VISIBLE,
  INDEX `fk_endereco_pais1_idx` (`endereco_id_pais` ASC) VISIBLE,
  INDEX `fk_endereco_estado1_idx` (`endereco_id_estado` ASC) VISIBLE,
  CONSTRAINT `fk_endereco_tipo_logradouro1`
    FOREIGN KEY (`endereco_id_tipo_logradouro`)
    REFERENCES `db_ecommerce`.`tipo_logradouro` (`id_tipo_logradouro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_endereco_tipo_endereco1`
    FOREIGN KEY (`endereco_id_tipo_endereco`)
    REFERENCES `db_ecommerce`.`tipo_endereco` (`id_tipo_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_endereco_pais1`
    FOREIGN KEY (`endereco_id_pais`)
    REFERENCES `db_ecommerce`.`pais` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_endereco_estado1`
    FOREIGN KEY (`endereco_id_estado`)
    REFERENCES `db_ecommerce`.`estado` (`id_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- criando a tabela cliente
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `cliente_id_tipo_cliente` INT NOT NULL,
  `nome_completo` VARCHAR(120) NOT NULL,
  `cnpj_cpf` VARCHAR(14) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `telefone_residencial` VARCHAR(20) NULL,
  `telefone_celular` VARCHAR(20) NOT NULL,
  `telefone_comercial` VARCHAR(20) NULL,
  `telefone_comercial_ramal` VARCHAR(10) NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE INDEX `cnpj_cpf_UNIQUE` (`cnpj_cpf` ASC) VISIBLE,
  INDEX `fk_cliente_tipo_cliente1_idx` (`cliente_id_tipo_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_tipo_cliente1`
    FOREIGN KEY (`cliente_id_tipo_cliente`)
    REFERENCES `db_ecommerce`.`tipo_cliente` (`id_tipo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- criando a tabela cliente_endereco
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`cliente_endereco` (
  `id_cliente_endereco` INT NOT NULL AUTO_INCREMENT,
  `cliente_endereco_id_endereco` INT NOT NULL,
  `cliente_endereco_id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_cliente_endereco`),
  INDEX `fk_cliente_endereco_endereco1_idx` (`cliente_endereco_id_endereco` ASC) VISIBLE,
  INDEX `fk_cliente_endereco_cliente1_idx` (`cliente_endereco_id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_endereco_endereco1`
    FOREIGN KEY (`cliente_endereco_id_endereco`)
    REFERENCES `db_ecommerce`.`endereco` (`id_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_endereco_cliente1`
    FOREIGN KEY (`cliente_endereco_id_cliente`)
    REFERENCES `db_ecommerce`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- criando a tabela fornecedor
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`fornecedor` (
  `id_fornecedor` INT NOT NULL AUTO_INCREMENT,
  `razao_social` VARCHAR(50) NOT NULL,
  `cnpj` CHAR(14) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `telefone_celular` VARCHAR(20) NOT NULL,
  `telefone_comercial` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_fornecedor`))
ENGINE = InnoDB;

-- criando a tabela vendedor
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`vendedor` (
  `id_vendedor` INT NOT NULL AUTO_INCREMENT,
  `nome_vendedor` VARCHAR(45) NULL,
  PRIMARY KEY (`id_vendedor`))
ENGINE = InnoDB;

-- alterando a tabela vendedor e adicionando o atributo id_fornecedor
ALTER TABLE `db_ecommerce`.`vendedor`
ADD COLUMN `vendedor_id_fornecedor` INT REFERENCES `db_ecommerce`.`fornecedor` (id_fornecedor);

-- criando a tabela produto
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `produto_id_categoria` INT NOT NULL,
  `produto_id_fornecedor` INT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `valor` FLOAT NOT NULL,
  `descricao` VARCHAR(250) NULL,
  `tamanho` VARCHAR(45) NULL,
  `produto_id_vendedor` INT NOT NULL,
  PRIMARY KEY (`id_produto`),
  INDEX `fk_produto_categoria1_idx` (`produto_id_categoria` ASC) VISIBLE,
  INDEX `fk_produto_fornecedor2_idx` (`produto_id_fornecedor` ASC) VISIBLE,
  INDEX `fk_produto_vendedor1_idx` (`produto_id_vendedor` ASC) VISIBLE,
  CONSTRAINT `fk_produto_categoria1`
    FOREIGN KEY (`produto_id_categoria`)
    REFERENCES `db_ecommerce`.`categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_fornecedor2`
    FOREIGN KEY (`produto_id_fornecedor`)
    REFERENCES `db_ecommerce`.`fornecedor` (`id_fornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_vendedor1`
    FOREIGN KEY (`produto_id_vendedor`)
    REFERENCES `db_ecommerce`.`vendedor` (`id_vendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- criando a tabela estoque
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`estoque` (
  `estoque_id_produto` INT NOT NULL,
  `estoque` INT NOT NULL,
  PRIMARY KEY (`estoque_id_produto`),
  INDEX `fk_estoque_produto1_idx` (`estoque_id_produto` ASC) VISIBLE,
  CONSTRAINT `fk_estoque_produto1`
    FOREIGN KEY (`estoque_id_produto`)
    REFERENCES `db_ecommerce`.`produto` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- criando a tabela pedido
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pedido` (
  `id_pedido` INT NOT NULL AUTO_INCREMENT,
  `cliente_id_cliente` INT NOT NULL,
  `pedido_id_cliente_endereco` INT NOT NULL,
  `numero_pedido` INT NOT NULL,
  `prazo_devolucao` DATE NOT NULL,
  `valor_frete` FLOAT NOT NULL,
  `pedido_id_pedido_status` INT NOT NULL,
  `codigo_rastreio` VARCHAR(45) NULL,
  PRIMARY KEY (`id_pedido`),
  INDEX `fk_pedido_cliente1_idx` (`cliente_id_cliente` ASC) VISIBLE,
  INDEX `fk_pedido_cliente_endereco1_idx` (`pedido_id_cliente_endereco` ASC) VISIBLE,
  INDEX `fk_pedido_pedido_status1_idx` (`pedido_id_pedido_status` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_cliente1`
    FOREIGN KEY (`cliente_id_cliente`)
    REFERENCES `db_ecommerce`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_cliente_endereco1`
    FOREIGN KEY (`pedido_id_cliente_endereco`)
    REFERENCES `db_ecommerce`.`cliente_endereco` (`cliente_endereco_id_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_pedido_status1`
    FOREIGN KEY (`pedido_id_pedido_status`)
    REFERENCES `db_ecommerce`.`pedido_status` (`id_pedido_status`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- criando a tabela pedido_produto
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pedido_produto` (
  `id_pedido_produto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `marca` VARCHAR(45) NULL,
  `valor` FLOAT NULL,
  `descricao` VARCHAR(250) NULL,
  `tamanho` VARCHAR(45) NULL,
  `pedido_produto_id_produto` INT NOT NULL,
  `pedido_produto_id_categoria` INT NOT NULL,
  `pedido_produto_id_pedido` INT NOT NULL,
  PRIMARY KEY (`id_pedido_produto`),
  INDEX `fk_pedido_produto_produto1_idx` (`pedido_produto_id_produto` ASC, `pedido_produto_id_categoria` ASC) VISIBLE,
  INDEX `fk_pedido_produto_pedido1_idx` (`pedido_produto_id_pedido` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_produto_produto1`
    FOREIGN KEY (`pedido_produto_id_produto`)
    REFERENCES `db_ecommerce`.`produto` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
	CONSTRAINT `fk_pedido_produto_produto2`
    FOREIGN KEY (`pedido_produto_id_categoria`)
    REFERENCES `db_ecommerce`.`categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_produto_pedido1`
    FOREIGN KEY (`pedido_produto_id_pedido`)
    REFERENCES `db_ecommerce`.`pedido` (`id_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- criando a tabela pedido_pagamento
CREATE TABLE IF NOT EXISTS `db_ecommerce`.`pedido_pagamento` (
  `id_pedido_pagamento` INT NOT NULL AUTO_INCREMENT,
  `parcela` INT NOT NULL,
  `parcela_valor` FLOAT NOT NULL,
  `pedido_pagamento_id_pedido` INT NOT NULL,
  `pedido_pagamento_id_pagamento_tipo` INT NOT NULL,
  PRIMARY KEY (`id_pedido_pagamento`),
  INDEX `fk_pedido_pagamento_pedido1_idx` (`pedido_pagamento_id_pedido` ASC) VISIBLE,
  INDEX `fk_pedido_pagamento_pagamento_tipo1_idx` (`pedido_pagamento_id_pagamento_tipo` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_pagamento_pedido1`
    FOREIGN KEY (`pedido_pagamento_id_pedido`)
    REFERENCES `db_ecommerce`.`pedido` (`id_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_pagamento_pagamento_tipo1`
    FOREIGN KEY (`pedido_pagamento_id_pagamento_tipo`)
    REFERENCES `db_ecommerce`.`pagamento_tipo` (`id_pagamento_tipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_ecommerce`.`dados_cartao` (
  `id_dados_cartao` INT NOT NULL,
  `dados_cartao_id_pedido_pagamento` INT NOT NULL,
  `tipo_cartao` VARCHAR(45) NULL,
  `nome_cartao` VARCHAR(45) NULL,
  `numero_cartao` VARCHAR(16) NULL,
  `validade` DATE NULL,
  `codigo_seguranca` CHAR(3) NULL,
  PRIMARY KEY (`id_dados_cartao`),
  INDEX `fk_dados_cartao_pedido_pagamento1_idx` (`dados_cartao_id_pedido_pagamento` ASC) VISIBLE,
  CONSTRAINT `fk_dados_cartao_pedido_pagamento1`
    FOREIGN KEY (`dados_cartao_id_pedido_pagamento`)
    REFERENCES `db_ecommerce`.`pedido_pagamento` (`id_pedido_pagamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

ALTER TABLE dados_cartao DROP COLUMN tipo_cartao;
ALTER TABLE dados_cartao
MODIFY id_dados_cartao INT NOT NULL AUTO_INCREMENT;

-- inserindo dados na tabela fornecedor
INSERT INTO `db_ecommerce`.`fornecedor` (razao_social, cnpj, email, telefone_celular, telefone_comercial)
	VALUES	('Banana da Terra Ltda', '00000000000001', 'bananinha@bananadaterra.com.br','1199999998','1122222222'),
			('Almir Carrasco Ltda', '00000000000002', 'almir@carrasco.com.br','11999999999','1122222233'),
            ('Bruno Bezerra EPP', '00000000000003', 'brunao@gmail.com','11999999997','1122222244'),
            ('Camis Cado Ltda', '00000000000004', 'camis@cado.com.br','11999999996','1122222255'),
            ('Double Check Ltda', '00000000000005', 'double@check.com.br','11999999995','1122222266'),
            ('Grupo Acorda Pedrinho', '00000000000006', 'acorda@pedrinho.com.br','11999999996','1122222277');
            
-- inserindo dados na tabela vendedor
INSERT INTO `db_ecommerce`.`vendedor` (nome_vendedor, vendedor_id_fornecedor)
	VALUES	('Juscelino Kubitchek', Null),
            ('Evita Peron', Null),
            ('Silvio Santos', Null),
            ('Camis Cado Ltda', 4),
            ('Almir Carrasco Ltda', 2),
            ('Double Check Ltda', 5),
            ('Beto Barbosa', Null);

-- inserindo dados na tabela produto
INSERT INTO `db_ecommerce`.`produto` (produto_id_categoria, produto_id_fornecedor, nome, marca, valor, descricao, tamanho, produto_id_vendedor)
	VALUES	((SELECT id_categoria FROM categoria WHERE categoria='Calçados'), 2, 'Sapatênis', 'Colgate', 99.99, 'Sapatênis bonito', '41', 7),
			((SELECT id_categoria FROM categoria WHERE categoria='Acessórios'), 4, 'Fone de Ouvido', 'Cepacol', 125.90, 'Serve para ouvir', Null, 4),
            ((SELECT id_categoria FROM categoria WHERE categoria='Eletrônicos'), 5, 'Mouse Gamer', 'Kolynos', 350.00, 'Rato de mesa', Null, 6),
            ((SELECT id_categoria FROM categoria WHERE categoria='Vestimenta'), 6, 'Cueca Gamer', 'Zorba', 25.90, 'Luzes LlED', Null, 3),
            ((SELECT id_categoria FROM categoria WHERE categoria='Petshop'), 1, 'Coleira', 'Kof', 2.99, 'para o pescoço', Null, 1),
            ((SELECT id_categoria FROM categoria WHERE categoria='Petshop'), 5, 'Petisco', 'Petiscão', 9.90, 'Para comer', Null, 6);
 
-- inserindo dados na tabela de estoque 
INSERT INTO `db_ecommerce`.`estoque` (estoque_id_produto, estoque)
	VALUES	(1, 4),
			(2, 10),
            (3, 50),
            (4, 1),
            (5, 10),
            (6, 8000);

-- inserindo dados na tabela de cliente
INSERT INTO `db_ecommerce`.`cliente` (cliente_id_tipo_cliente, nome_completo, cnpj_cpf, email, telefone_residencial, telefone_celular, telefone_comercial, telefone_comercial_ramal)
	VALUES	(1, 'Joaninha Minha Amiga', '11111111122', 'jo@ninha.com.br', Null, '11998888555', Null, Null),
			(1, 'Amarildo Alves', '11111111133', 'amarildo@gmail.com.br', Null, '11999999955', Null, Null),
			(1, 'Bete Balanço', '11111111144', 'bete@gmail.com.br', '1155002244', '11999999955', '22332233', '435'),
			(2, 'Estrelinha Ltda', '11222333000144', 'estrela@pequena.com.br', '1199000001', '11988885555', '22335500', Null);

-- inserindo dados na tabela endereco
INSERT INTO `db_ecommerce`.`endereco` (endereco_id_tipo_logradouro, endereco_id_tipo_endereco, logradouro, numero, complemento, bairro, cep, cidade, endereco_id_estado, endereco_id_pais)
	VALUES	(2, 1, 'Charles Bronson', 60, 'casa 4', 'Higino', '5552222', 'São Paulo', 25, 26),
			(1, 3, 'Quase Nada', 1, Null, 'Jericó', '00000111', 'Salvador', 5, 26),
            (3, 2, 'Chispa Divina', 100, Null, 'Montanha', '88889999', 'Campinas', 25, 26),
            (4, 1, 'Olavo Bilac', 50, '40 frente', 'Itapira', '33333332', 'Jundiaí', 25, 26);

-- inserindo dados na tabela cliente_endereco
INSERT INTO `db_ecommerce`.`cliente_endereco` (cliente_endereco_id_endereco, cliente_endereco_id_cliente)
	VALUES	(1, 1),
			(2, 2),
            (3, 3),
            (4, 4);

-- inserindo dados na tabela pedido
INSERT INTO `db_ecommerce`.`pedido` (cliente_id_cliente, pedido_id_cliente_endereco, numero_pedido, prazo_devolucao, valor_frete, pedido_id_pedido_status, codigo_rastreio)
	VALUES	(1, 1, '2022092401', '2022-10-20', (
			SELECT `frete`.`valor_frete` 
			FROM `frete` 
			INNER JOIN `endereco` ON `frete`.`cep_inicial`<= `endereco`.`cep` AND `frete`.`cep_final`>= `endereco`.`cep` 
			INNER JOIN `cliente_endereco` ON `cliente_endereco`.`cliente_endereco_id_endereco`=`endereco`.`id_endereco`
			WHERE `cliente_endereco`.`cliente_endereco_id_cliente`=1
    ), 2, Null),
			(1, 1, '2022092402', '2022-10-10', (
			SELECT `frete`.`valor_frete` 
			FROM `frete` 
			INNER JOIN `endereco` ON `frete`.`cep_inicial`<= `endereco`.`cep` AND `frete`.`cep_final`>= `endereco`.`cep` 
			INNER JOIN `cliente_endereco` ON `cliente_endereco`.`cliente_endereco_id_endereco`=`endereco`.`id_endereco`
			WHERE `cliente_endereco`.`cliente_endereco_id_cliente`=1
    ), 5, '1060'),
			(2, 2, '2022092403', '2022-11-11', (
			SELECT `frete`.`valor_frete` 
			FROM `frete` 
			INNER JOIN `endereco` ON `frete`.`cep_inicial`<= `endereco`.`cep` AND `frete`.`cep_final`>= `endereco`.`cep` 
			INNER JOIN `cliente_endereco` ON `cliente_endereco`.`cliente_endereco_id_endereco`=`endereco`.`id_endereco`
			WHERE `cliente_endereco`.`cliente_endereco_id_cliente`=2
    ), 6, '8096'),
			(3, 3, '2022092404', '2022-12-05', (
			SELECT `frete`.`valor_frete` 
			FROM `frete` 
			INNER JOIN `endereco` ON `frete`.`cep_inicial`<= `endereco`.`cep` AND `frete`.`cep_final`>= `endereco`.`cep` 
			INNER JOIN `cliente_endereco` ON `cliente_endereco`.`cliente_endereco_id_endereco`=`endereco`.`id_endereco`
			WHERE `cliente_endereco`.`cliente_endereco_id_cliente`=3
    ), 1, Null),
			(3, 3, '2022092405', '2022-12-06', (
			SELECT `frete`.`valor_frete` 
			FROM `frete` 
			INNER JOIN `endereco` ON `frete`.`cep_inicial`<= `endereco`.`cep` AND `frete`.`cep_final`>= `endereco`.`cep` 
			INNER JOIN `cliente_endereco` ON `cliente_endereco`.`cliente_endereco_id_endereco`=`endereco`.`id_endereco`
			WHERE `cliente_endereco`.`cliente_endereco_id_cliente`=3
    ), 3, Null),
			(3, 3, '2022092405', '2023-01-05', (
			SELECT `frete`.`valor_frete` 
			FROM `frete` 
			INNER JOIN `endereco` ON `frete`.`cep_inicial`<= `endereco`.`cep` AND `frete`.`cep_final`>= `endereco`.`cep` 
			INNER JOIN `cliente_endereco` ON `cliente_endereco`.`cliente_endereco_id_endereco`=`endereco`.`id_endereco`
			WHERE `cliente_endereco`.`cliente_endereco_id_cliente`=3
    ), 4, Null);
    
SELECT nome, marca, valor, descricao, tamanho, id_produto, produto_id_categoria 
	FROM produto 
WHERE id_produto IN (1,2);

-- inserindo dados na tabela pedido_produto
INSERT INTO `db_ecommerce`.`pedido_produto` (nome, marca, valor, descricao, tamanho, pedido_produto_id_produto, pedido_produto_id_categoria, pedido_produto_id_pedido)
	SELECT nome, marca, valor, descricao, tamanho, id_produto, produto_id_categoria, 1 
	FROM produto 
WHERE id_produto IN (1,2);
INSERT INTO `db_ecommerce`.`pedido_produto` (nome, marca, valor, descricao, tamanho, pedido_produto_id_produto, pedido_produto_id_categoria, pedido_produto_id_pedido)
	SELECT nome, marca, valor, descricao, tamanho, id_produto, produto_id_categoria, 2 
	FROM produto;
INSERT INTO `db_ecommerce`.`pedido_produto` (nome, marca, valor, descricao, tamanho, pedido_produto_id_produto, pedido_produto_id_categoria, pedido_produto_id_pedido)
	SELECT nome, marca, valor, descricao, tamanho, id_produto, produto_id_categoria, 3
	FROM produto 
WHERE id_produto IN (3,4);
INSERT INTO `db_ecommerce`.`pedido_produto` (nome, marca, valor, descricao, tamanho, pedido_produto_id_produto, pedido_produto_id_categoria, pedido_produto_id_pedido)
	SELECT nome, marca, valor, descricao, tamanho, id_produto, produto_id_categoria, 4
	FROM produto 
WHERE id_produto IN (5);
INSERT INTO `db_ecommerce`.`pedido_produto` (nome, marca, valor, descricao, tamanho, pedido_produto_id_produto, pedido_produto_id_categoria, pedido_produto_id_pedido)
	SELECT nome, marca, valor, descricao, tamanho, id_produto, produto_id_categoria, 5 
	FROM produto 
WHERE id_produto IN (2,2);
INSERT INTO `db_ecommerce`.`pedido_produto` (nome, marca, valor, descricao, tamanho, pedido_produto_id_produto, pedido_produto_id_categoria, pedido_produto_id_pedido)
	SELECT nome, marca, valor, descricao, tamanho, id_produto, produto_id_categoria, 6 
	FROM produto 
WHERE id_produto IN (6);

-- inserindo dados na tabela pedido_pagamento
INSERT INTO `db_ecommerce`.`pedido_pagamento` (parcela, parcela_valor, pedido_pagamento_id_pedido, pedido_pagamento_id_pagamento_tipo)
	VALUES	(1, (
			SELECT ROUND(SUM(pedido_produto.valor),2)
				FROM pedido_produto
			WHERE pedido_produto_id_pedido=1
    ), 1, 3),
			(2, (
			SELECT ROUND(SUM(pedido_produto.valor),2)
				FROM pedido_produto
			WHERE pedido_produto_id_pedido=2
    ), 2, 1),
			(2, (
			SELECT ROUND(SUM(pedido_produto.valor),2)/2
				FROM pedido_produto
			WHERE pedido_produto_id_pedido=3
    ), 3, 1),
			(2, (
			SELECT ROUND(SUM(pedido_produto.valor),2)/2
				FROM pedido_produto
			WHERE pedido_produto_id_pedido=3
    ), 3, 1),
            (2, (
			SELECT ROUND(SUM(pedido_produto.valor),2)
				FROM pedido_produto
			WHERE pedido_produto_id_pedido=4
    ), 4, 2),
            (2, (
			SELECT ROUND(SUM(pedido_produto.valor),2)
				FROM pedido_produto
			WHERE pedido_produto_id_pedido=5
    ), 5, 4),
            (2, (
			SELECT ROUND(SUM(pedido_produto.valor),2)
				FROM pedido_produto
			WHERE pedido_produto_id_pedido=5
    ), 5, 4),
            (2, (
			SELECT ROUND(SUM(pedido_produto.valor),2)
				FROM pedido_produto
			WHERE pedido_produto_id_pedido=6
    ), 6, 3);
    
  
  SELECT * FROM pedido_pagamento WHERE pedido_pagamento_id_pagamento_tipo IN (1,2);
  
  SELECT * FROM cliente;
  
  SELECT cliente.nome_completo
	FROM cliente
	JOIN pedido ON cliente_id_cliente=cliente.id_cliente
WHERE pedido.id_pedido=1;
  
  INSERT INTO `db_ecommerce`.`dados_cartao` (dados_cartao_id_pedido_pagamento, nome_cartao, numero_cartao, validade, codigo_seguranca)
	VALUES	(2, (
		SELECT cliente.nome_completo
		FROM cliente
		JOIN pedido ON cliente_id_cliente=cliente.id_cliente
	WHERE pedido.id_pedido=2), '1111222233334444', '2027-10-01', '666'),
			(3, (
		SELECT cliente.nome_completo
		FROM cliente
		JOIN pedido ON cliente_id_cliente=cliente.id_cliente
	WHERE pedido.id_pedido=3), '1111222233334422', '2027-11-05', '666'),
			(4, (
		SELECT cliente.nome_completo
		FROM cliente
		JOIN pedido ON cliente_id_cliente=cliente.id_cliente
	WHERE pedido.id_pedido=3), '1111222233334455', '2027-12-05', '666'),
			(5, (
		SELECT cliente.nome_completo
		FROM cliente
		JOIN pedido ON cliente_id_cliente=cliente.id_cliente
	WHERE pedido.id_pedido=4), '2222222233334455', '2027-09-05', '666');
    

SELECT * FROM pedido;
SELECT * FROM cliente;
   
 -- COMEÇANDO OS SELECTS
 
 -- Quantos pedidos foram feitos por cada cliente?
SELECT  nome_completo, COUNT(id_pedido)
	FROM cliente
    JOIN pedido ON cliente_id_cliente=cliente.id_cliente
    GROUP BY nome_completo;

SELECT * FROM fornecedor;
SELECT * FROM vendedor;

  -- Algum vendedor também é fornecedor?
  SELECT nome_vendedor
	FROM vendedor
    INNER JOIN fornecedor ON id_fornecedor=vendedor_id_fornecedor;
    
-- Relação de produtos fornecedores e estoques
SELECT * FROM produto;
SELECT * FROM fornecedor;
SELECT * FROM estoque;

SELECT razao_social AS 'Fornecedor', CONCAT(produto.nome,'-',marca) AS 'Produto', estoque.estoque AS 'Estoque'
	FROM fornecedor
    INNER JOIN produto ON produto_id_fornecedor=fornecedor.id_fornecedor
    INNER JOIN estoque ON estoque_id_produto=produto.id_produto;
    
-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT razao_social AS 'Fornecedor', produto.nome AS 'Produto'
	FROM fornecedor
    INNER JOIN produto ON produto_id_fornecedor=fornecedor.id_fornecedor;

SELECT * FROM pedido;

-- retornando todos os nomes dos clientes, números dos pedidos e valores de compra
SELECT nome_completo AS 'Nome do Cliente', numero_pedido 'Número do Pedido', ROUND(SUM(pedido_produto.valor),2) AS 'Valor da Compra'
	FROM pedido_produto
INNER JOIN pedido ON pedido_produto_id_pedido=pedido.id_pedido
INNER JOIN cliente ON cliente_id_cliente=cliente.id_cliente
GROUP BY nome_completo, numero_pedido;

-- retornando o frete com base no id do pedido nº 1
SELECT `frete`.`valor_frete` 
	FROM `frete` 
INNER JOIN `endereco` ON `frete`.`cep_inicial`<= `endereco`.`cep` AND `frete`.`cep_final`>= `endereco`.`cep` 
INNER JOIN `cliente_endereco` ON `cliente_endereco`.`cliente_endereco_id_endereco`=`endereco`.`id_endereco`
WHERE `cliente_endereco`.`cliente_endereco_id_cliente`=1;

-- retorna o nome do produto, o valor do produto e o nome do fornecedor, onde o valor do produto é maior ou igual a $200
SELECT produto.nome AS 'Nome do Produto', produto.valor AS 'Valor do Produto', fornecedor.razao_social AS 'Fornecedor'
	FROM produto
    INNER JOIN fornecedor
WHERE id_fornecedor=produto.produto_id_fornecedor HAVING produto.valor>=200;

-- retorna o nome do cliente, o número do documento e o e-mail, ordenado alfabeticamente pelo nome do cliente
SELECT * FROM cliente;
SELECT cliente.nome_completo AS 'Nome Cliente', cliente.cnpj_cpf AS 'Documento', cliente.email AS 'E-mail'
	FROM cliente
ORDER BY cliente.nome_completo;
