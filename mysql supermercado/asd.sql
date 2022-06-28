SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Table `tb_caixa_compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_caixa_compra` (
  `id_compra` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_compra`))
ENGINE = InnoDB; 

-- -----------------------------------------------------
-- Table `tb_mercadoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_mercadoria` (
  `id_produto` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `quantidade` VARCHAR(45) NOT NULL,
  `valor` VARCHAR(45) NOT NULL,
  `lote` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_produto`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `tb_itens_caixa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_itens_caixa` (
  `tb_caixa_compra_id_compra` INT NOT NULL,
  `tb_mercadoria_id_produto` INT NOT NULL,
  `produto` VARCHAR(45) NOT NULL,
  `quantidade` VARCHAR(45) NOT NULL,
  `valor` VARCHAR(45) NOT NULL,
  `lote` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`tb_caixa_compra_id_compra`, `tb_mercadoria_id_produto`),
  CONSTRAINT `fk_tb_caixa_compra_has_tb_mercadoria_tb_caixa_compra`
    FOREIGN KEY (`tb_caixa_compra_id_compra`)
    REFERENCES `tb_caixa_compra` (`id_compra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_caixa_compra_has_tb_mercadoria_tb_mercadoria1`
    FOREIGN KEY (`tb_mercadoria_id_produto`)
    REFERENCES `tb_mercadoria` (`id_mercadoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
UPDATE mercado2.tb_cliente
SET
razao_social_cliente = '',
cnpj_cliente = '',
cep_cliente = '',
num_ender_cliente = '',
email_cliente = '',
tel_cliente = '',
nm_repres_cliente = ''
WHERE cnpj_cliente = '';

select * from tb_mercadoria;
select * from tb_caixa_compra order by id_compra desc;
select * from tb_itens_caixa;
select * from tb_login;
select * from tb_fornecedor;

update tb_itens_caixa c inner join tb_mercadoria m SET c.quantidade = 1 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 50 and m.cod_barra = 1000000;
select * from tb_mercadoria where cod_barra = 1000005;

	

select c.tb_caixa_compra_id_compra caixa, m.cod_barra lote, m.nm_produto nome, c.quantidade, m.vlr_venda_varejo valor from tb_itens_caixa c inner join tb_mercadoria m on c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 64;

update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 1.59 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 1 and m.cod_barra = 1000000;
update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 1.90 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 1 and m.cod_barra = 1000001;
update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 4.89 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 1 and m.cod_barra = 1000023;
update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 5.39 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 2 and m.cod_barra = 1000018;
update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 4.89 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 2 and m.cod_barra = 1000023;
update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 4.89 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 2 and m.cod_barra = 100041;
update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 1.59 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 50 and m.cod_barra = 1000000;
update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 1.90 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 50 and m.cod_barra = 1000001;
update tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = 4.99 where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 50 and m.cod_barra = 1000025;

select c.tb_caixa_compra_id_compra caixa, m.cod_barra lote, m.nm_produto nome, c.quantidade, m.vlr_venda_varejo valor from tb_itens_caixa c inner join tb_mercadoria m on c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 50;
select c.tb_caixa_compra_id_compra caixa, m.cod_barra lote, m.nm_produto nome, c.quantidade, m.vlr_venda_varejo valor from tb_itens_caixa c inner join tb_mercadoria m on c.tb_mercadoria_id_produto = m.id_mercadoria;

select c.tb_caixa_compra_id_compra caixa, m.cod_barra lote, m.nm_produto nome, c.quantidade, m.vlr_venda_varejo valor from tb_itens_caixa c inner join tb_mercadoria m on c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = 50 and m.cod_barra = 1000000;

insert into tb_caixa_compra (valor_total,quantidade) values (0.00,0);

INSERT INTO tb_itens_caixa (tb_caixa_compra_id_compra, tb_mercadoria_id_produto) VALUES (2,31);
select * from tb_itens_compra;
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=0;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
select * from tb_cliente;
delete from tb_cliente where razao_social_cliente = 'testey';
truncate tb_caixa_compra;
truncate tb_itens_caixa;