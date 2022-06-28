create table tb_pedidos_compra(
id_pedido_compra int not null auto_increment,
cnpj_fornecedor varchar(18) not null,

constraint primary key(id_pedido_compra),
constraint foreign key(cnpj_fornecedor) references tb_fornecedor(cnpj_fornecedor)
);

insert into tb_pedidos_compra(cnpj_fornecedor) values('40710724000143');
insert into tb_pedidos_compra(cnpj_fornecedor) values('40710724000143');
insert into tb_pedidos_compra(cnpj_fornecedor) values('40710724000143');
insert into tb_pedidos_compra(cnpj_fornecedor) values('77544870000156');
insert into tb_pedidos_compra(cnpj_fornecedor) values('02789402568777');
insert into tb_pedidos_compra(cnpj_fornecedor) values('27749151000101');

select id_pedido_compra id_pedido, cnpj_fornecedor cnpj from tb_pedidos_compra;