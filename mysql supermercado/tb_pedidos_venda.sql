create table tb_pedidos_venda(
id_pedido_venda int not null auto_increment,
cnpj_cliente varchar(18) not null,
constraint primary key(id_pedido_venda),
constraint foreign key(cnpj_cliente) references tb_cliente(cnpj_cliente)
);

insert into tb_pedidos_venda(cnpj_cliente) values('34843554484005');
insert into tb_pedidos_venda(cnpj_cliente) values('32511117449905');
insert into tb_pedidos_venda(cnpj_cliente) values('11708853698503');

select p.id_pedido_venda cod, c.razao_social_cliente empresa, c.cnpj_cliente cnpj, c.tel_cliente telefone, c.email_cliente email, c.cep_cliente cep, c.num_ender_cliente numero, c.nm_repres_cliente representante from tb_pedidos_venda p inner join tb_cliente c on c.cnpj_cliente = p.cnpj_cliente order by id_pedido_venda;