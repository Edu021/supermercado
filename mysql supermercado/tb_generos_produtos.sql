create table tb_generos_produtos(
id_genero int not null auto_increment,
nm_genero varchar (70),
constraint primary key(id_genero)
);

insert into tb_generos_produtos(nm_genero) values("bebidas");
insert into tb_generos_produtos(nm_genero) values("bebidas alcolicas");
insert into tb_generos_produtos(nm_genero) values("biscoitos e salgadinhos");
insert into tb_generos_produtos(nm_genero) values("carnes, aves e peixes");
insert into tb_generos_produtos(nm_genero) values("congelados");
insert into tb_generos_produtos(nm_genero) values("doces e sobremesas");
insert into tb_generos_produtos(nm_genero) values("farinhas e grãos");
insert into tb_generos_produtos(nm_genero) values("frios e lácticinios");
insert into tb_generos_produtos(nm_genero) values("frutas e verduras");
insert into tb_generos_produtos(nm_genero) values("higiene e cuidados pessoais");
insert into tb_generos_produtos(nm_genero) values("leites e iogurtes");
insert into tb_generos_produtos(nm_genero) values("alimentos basicos");

select g.nm_genero, c.nm_categoria from tb_generos_produtos g inner join tb_categorias_produtos c on g.id_genero = c.id_genero;