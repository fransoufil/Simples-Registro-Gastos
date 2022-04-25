-- -----------------------------------------------------
-- Schema db_simples_registro_gastos
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `db_simples_registro_gastos`;

CREATE SCHEMA `db_simples_registro_gastos`;
USE `db_simples_registro_gastos` ;

-- -----------------------------------------------------
-- Table `db_simples_registro_gastos`.`tbl_gastos`
-- -----------------------------------------------------
CREATE TABLE `db_simples_registro_gastos`.`tbl_gastos` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `data` DATETIME NOT NULL,
  `valor` DECIMAL(10,2) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `data_lancamento` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = BLACKHOLE;
