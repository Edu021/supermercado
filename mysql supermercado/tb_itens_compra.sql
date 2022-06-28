create table tb_itens_compra(
id_itens_compra int not null auto_increment,
nm_produto varchar(45),
quant_produto int,
vlr_unit decimal(10,2),
id_pedido_compra int not null,
constraint primary key(id_itens_compra),
constraint foreign key(id_pedido_compra) references tb_pedidos_compra(id_pedido_compra)
);


insert into tb_itens_compra(nm_produto,quant_produto,vlr_unit,id_pedido_compra) values('Feijão preto 1kg',100,5.20,1);
insert into tb_itens_compra(nm_produto,quant_produto,vlr_unit,id_pedido_compra) values('Carne moída 1kg',200,10.20,1);
insert into tb_itens_compra(nm_produto,quant_produto,vlr_unit,id_pedido_compra) values('Feijão preto 1kg',300,5.20,2);
insert into tb_itens_compra(nm_produto,quant_produto,vlr_unit,id_pedido_compra) values('Chocolate 1kg',300,7.20,2);
insert into tb_itens_compra(nm_produto,quant_produto,vlr_unit,id_pedido_compra) values('Bandeija iogurte',300,8.20,3);
insert into tb_itens_compra(nm_produto,quant_produto,vlr_unit,id_pedido_compra) values('Barra cereal qualquer marca',300,0.99,4);
insert into tb_itens_compra(nm_produto,quant_produto,vlr_unit,id_pedido_compra) values('Farinha de trigo 2kg',300,15.20,5);

select * from tb_itens_compra;