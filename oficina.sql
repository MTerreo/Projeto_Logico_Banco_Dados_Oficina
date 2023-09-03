drop schema `oficina`;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema oficina
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `oficina` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `oficina` ;

-- -----------------------------------------------------
-- Table `oficina`.`cliente_pf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`cliente_pf` (
  `id_cliente_pf` INT NOT NULL AUTO_INCREMENT,
  `nome_cliente_pf` VARCHAR(45) NOT NULL,
  `CPF` CHAR(11) NOT NULL,
  `aniversario` DATE NOT NULL,
  `endereco` VARCHAR(45) NULL DEFAULT NULL,
  `telefone` CHAR(11) NULL DEFAULT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cliente_pf`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`cliente_pj`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`cliente_pj` (
  `id_cliente_pj` INT NOT NULL AUTO_INCREMENT,
  `nome_empresa` VARCHAR(45) NOT NULL,
  `nome_cliente_pj` VARCHAR(45) NULL DEFAULT NULL,
  `CNPJ` CHAR(14) NOT NULL,
  `telefone` CHAR(11) NOT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `endereco` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente_pj`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `id_cliente_pf` INT NULL DEFAULT NULL,
  `id_cliente_pj` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  INDEX `fk_cliente_pf` (`id_cliente_pf` ASC) VISIBLE,
  INDEX `fk_cliente_pj` (`id_cliente_pj` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_pf`
    FOREIGN KEY (`id_cliente_pf`)
    REFERENCES `oficina`.`cliente_pf` (`id_cliente_pf`),
  CONSTRAINT `fk_cliente_pj`
    FOREIGN KEY (`id_cliente_pj`)
    REFERENCES `oficina`.`cliente_pj` (`id_cliente_pj`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`orcamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`orcamento` (
  `id_orcamento` INT NOT NULL AUTO_INCREMENT,
  `id_orcamento_cliente` INT NULL DEFAULT NULL,
  `numero_orcamento` CHAR(8) NOT NULL,
  `aprovado` ENUM('Sim', 'Não') NOT NULL,
  `data_orcamento` DATE NOT NULL,
  `valor_orcamento` FLOAT NOT NULL,
  `data_validade` DATE NOT NULL,
  PRIMARY KEY (`id_orcamento`),
  INDEX `fk_orcamento_cliente` (`id_orcamento_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_orcamento_cliente`
    FOREIGN KEY (`id_orcamento_cliente`)
    REFERENCES `oficina`.`cliente` (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`tabela_precos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`tabela_precos` (
  `id_tabela_precos` INT NOT NULL AUTO_INCREMENT,
  `tipo_servico` ENUM('Conserto', 'Revisão') NOT NULL,
  `sistema` ENUM('Motor', 'Suspensão', 'Eletrica', 'Carroceria') NOT NULL,
  `pecas_troca` VARCHAR(45) NULL DEFAULT NULL,
  `pecas_quantidade` FLOAT NULL DEFAULT NULL,
  `pecas_preco` FLOAT NULL DEFAULT NULL,
  `mao_de_obra` FLOAT NOT NULL,
  `valor_total` FLOAT NOT NULL,
  PRIMARY KEY (`id_tabela_precos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`valor_orcado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`valor_orcado` (
  `id_valor_orcado` INT NULL DEFAULT NULL,
  `id_valor_tabela_precos` INT NULL DEFAULT NULL,
  INDEX `fk_valor_orcado` (`id_valor_orcado` ASC) VISIBLE,
  INDEX `fk_tabela_precos` (`id_valor_tabela_precos` ASC) VISIBLE,
  CONSTRAINT `fk_valor_orcado`
    FOREIGN KEY (`id_valor_orcado`)
    REFERENCES `oficina`.`orcamento` (`id_orcamento`),
  CONSTRAINT `fk_tabela_preco`
    FOREIGN KEY (`id_valor_tabela_precos`)
    REFERENCES `oficina`.`tabela_precos` (`id_tabela_precos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`equipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`equipe` (
  `id_equipe` INT NOT NULL,
  `sistema` VARCHAR(45) NOT NULL,
  `responsavel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_equipe`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`funcionario` (
  `id_funcionario` INT NOT NULL AUTO_INCREMENT,
  `id_funcionario_equipe` INT NULL DEFAULT NULL,
  `Emcode` CHAR(6) NULL DEFAULT NULL,
  `Emname` VARCHAR(45) NULL DEFAULT NULL,
  `CPF` CHAR(11) NOT NULL,
  `aniversario` DATE NOT NULL,
  `endereco` VARCHAR(45) NULL DEFAULT NULL,
  `unidade` VARCHAR(45) NULL DEFAULT NULL,
  `sistema` VARCHAR(45) NULL DEFAULT NULL,
  `telefone` CHAR(11) NULL DEFAULT NULL,
  `data_admissao` DATE NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  INDEX `fk_funcionario_equipe` (`id_funcionario_equipe` ASC) VISIBLE,
  CONSTRAINT `fk_funcionario_equipe`
    FOREIGN KEY (`id_funcionario_equipe`)
    REFERENCES `oficina`.`equipe` (`id_equipe`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`veiculo` (
  `id_veiculo` INT NOT NULL AUTO_INCREMENT,
  `id_veiculo_cliente` INT NULL DEFAULT NULL,
  `tipo_veiculo` ENUM('Moto', 'Carro', 'Triciclo', 'Van', 'Caminhão') NOT NULL,
  `placa` CHAR(7) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `ano_fabricacao` CHAR(4) NOT NULL,
  PRIMARY KEY (`id_veiculo`),
  UNIQUE INDEX `unique_placa_veiculo` (`placa` ASC) VISIBLE,
  INDEX `fk_veiculo_cliente` (`id_veiculo_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_veiculo_cliente`
    FOREIGN KEY (`id_veiculo_cliente`)
    REFERENCES `oficina`.`cliente` (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`ordem_servico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`ordem_servico` (
  `id_ordem_servico` INT NOT NULL AUTO_INCREMENT,
  `id_os_veiculo` INT NULL DEFAULT NULL,
  `id_os_equipe` INT NULL DEFAULT NULL,
  `id_os_orcamento` INT NULL DEFAULT NULL,
  `numero_servico` CHAR(8) NOT NULL,
  `data_abertura` DATE NOT NULL,
  `pecas_necessarias` VARCHAR(45) NULL DEFAULT NULL,
  `valor_servico` FLOAT NULL DEFAULT NULL,
  `status` ENUM('Em execução', 'Concluida', 'Em analise pela equipe', 'Cancelada') NULL DEFAULT NULL,
  `data_termino` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_ordem_servico`),
  INDEX `fk_ordem_veiculo` (`id_os_veiculo` ASC) VISIBLE,
  INDEX `fk_ordem_equipe` (`id_os_equipe` ASC) VISIBLE,
  INDEX `fk_ordem_orcamento` (`id_os_orcamento` ASC) VISIBLE,
  CONSTRAINT `fk_ordem_orcamento`
    FOREIGN KEY (`id_os_orcamento`)
    REFERENCES `oficina`.`orcamento` (`id_orcamento`),
  CONSTRAINT `fk_ordem_equipe`
    FOREIGN KEY (`id_os_equipe`)
    REFERENCES `oficina`.`equipe` (`id_equipe`),
  CONSTRAINT `fk_ordem_veiculo`
    FOREIGN KEY (`id_os_veiculo`)
    REFERENCES `oficina`.`veiculo` (`id_veiculo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`estoque_pecas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`estoque_pecas` (
  `id_estoque_pecas` INT NOT NULL AUTO_INCREMENT,
  `nome_peca` VARCHAR(45) NOT NULL,
  `quantidade_estoque` INT NOT NULL,
  `valor_unitario` FLOAT NOT NULL,
  PRIMARY KEY (`id_estoque_pecas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `oficina`.`os_pecas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oficina`.`os_pecas` (
  `id_pecas_estoque_pecas` INT NULL DEFAULT NULL,
  `id_pecas_ordem_servico` INT NULL DEFAULT NULL,
  `id_pecas_orcamento` INT NULL DEFAULT NULL,
  INDEX `fk_pecas_estoque_pecas` (`id_pecas_estoque_pecas` ASC) VISIBLE,
  INDEX `fk_pecas_ordem_servico` (`id_pecas_ordem_servico` ASC) VISIBLE,
  INDEX `fk_pecas_orcamento` (`id_pecas_orcamento` ASC) VISIBLE,
  CONSTRAINT `fk_pecas_orcamento`
    FOREIGN KEY (`id_pecas_orcamento`)
    REFERENCES `oficina`.`orcamento` (`id_orcamento`),
  CONSTRAINT `fk_pecas_ordem_servico`
    FOREIGN KEY (`id_pecas_ordem_servico`)
    REFERENCES `oficina`.`ordem_servico` (`id_ordem_servico`),
  CONSTRAINT `fk_pecas_estoque_pecas`
    FOREIGN KEY (`id_pecas_estoque_pecas`)
    REFERENCES `oficina`.`estoque_pecas` (`id_estoque_pecas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
