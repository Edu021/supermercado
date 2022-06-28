create table tb_categorias_produtos(
id_categoria int not null auto_increment,
nm_categoria varchar (70),
id_genero int not null,

constraint primary key(id_categoria),
constraint foreign key(id_genero) references tb_generos_produtos(id_genero)
);

insert into tb_categorias_produtos(nm_categoria,id_genero) values("achocolatado/bebida láctea",1);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("água",1);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("chá pronto",1);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("refrigerante",1);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("suco",1);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("cerveja",2);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("destilado",2);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("vinho",2);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("whiskie",2);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("biscoito doce",3);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("biscoito salgado",3);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("salgadinho e snack",3);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("ave",4);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("bovino",4);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("peixe",4);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("suíno",4);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("hambúrguer",5);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("prato pronto",5);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("sorvete e sobremesa",5);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("vegetal congelado",5);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("chocolate",6);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("doce",6);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("fruta em calda",6);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("pudin/gelatina",6);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("fermento",7);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("grãos",7);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("frios",8);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("lacticínio",8);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("massa fresca",8);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("fruta",9);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("fruta seca",9);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("verdura",9);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("cabelo",10);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("corpo",10);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("higiene",10);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("higiene bucal",10);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("iogurtes",11);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("leite em pó",11);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("leites tradicionais",11);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("arroz",12);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("feijão",12);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("ovos",12);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("óleo",12);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("açucar",12);
insert into tb_categorias_produtos(nm_categoria,id_genero) values("farinha",7);
select * from tb_categorias_produtos;
select c.nm_categoria categoria, g.nm_genero genero from tb_categorias_produtos c inner join tb_generos_produtos g on g.id_genero = c.id_genero;