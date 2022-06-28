create table tb_itens_venda(
	id_itens_venda int not null auto_increment,
	id_mercadoria int NOT NULL,
    cnpj_cliente varchar(70) not null,
    qtd_produto int,
	vlr_unit decimal(10,2),
	
	constraint primary key(id_itens_venda),
	constraint foreign key(id_mercadoria) references tb_mercadoria(id_mercadoria),
	constraint foreign key(cnpj_cliente) references tb_pedidos_venda(cnpj_cliente)
);

insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(1,100,'34843554484005',1.09);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(2,100,'34843554484005',1.15);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(3,100,'34843554484005',1.45);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(4,100,'34843554484005',1.00);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(5,25,'34843554484005',5.10);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(1,15,'32511117449905',1.09);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(2,50,'32511117449905',1.15);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(3,20,'32511117449905',1.45);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(4,25,'32511117449905',1.00);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(5,10,'32511117449905',5.10);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(1,10,'11708853698503',1.09);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(2,10,'11708853698503',1.15);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit) values(3,10,'11708853698503',1.45);

select * from tb_itens_venda i inner join tb_pedidos_venda p, tb_mercadoria m where m.id_mercadoria = i.id_mercadoria and i.cnpj_cliente = p.cnpj_cliente order by i.id_itens_venda;