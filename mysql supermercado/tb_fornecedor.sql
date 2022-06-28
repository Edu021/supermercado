create table tb_fornecedor(
	razao_social_fornecedor varchar(45) not null,
	cnpj_fornecedor varchar(18) not null,
	cep_fornecedor varchar(9) not null,
	num_ender_fornecedor varchar(20) not null,
	email_fornecedor varchar(70) not null,
	tel_fornecedor varchar(20) not null,
	nm_repres_fornecedor varchar(70) not null,
    nm_generos varchar(500),
	constraint primary key(cnpj_fornecedor)
);

insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("senai", "34843554484005","88331500","3445","senai@gmal.com.br","91997293911","Guilherme Keil", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Pizzaria do Barão", "11708853698503","853033391","345","contato@pizzaria-do-barao.com.br","98378260890","PEDRO ROCHA ALMEIDA", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Pastelaria Autêntica", "27749151000101","57716230","45","contato@pastelaria-autentica.com.br","91832699993","MARIA OLIVEIRA MELO", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Padaria Genuíno", "02789402568777","58417145","492","contato@padaria-genuino.com.br","48903125315","PEDRO RAMOS MEDEIROS", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Pizzaria União", "03213427151881","59763527","1245","contato@pizzaria-uniao.com.br","63769918710","Nelsa Pedro ", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Contabilidade Teixeira", "43101623000163","03908350","123","contato@contabilidadeteixeira.com","11385163222","Laureana Casqueira ", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Hotel Silva", "46011395000129","19872038","456","contato@hotelsilva.com","11544062775","Eliézer Camilo ", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Comércio Rainha", "73102374000191","02930477","789","contato@comérciorainha.com","11307213045","Marcelo Mendes ", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Restaurante Visão", "34172442000137","02756245","101","contato@restaurantevisão.com","11753839552","Dayra Novais ", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Pastelaria São José", "62985430000167","05511965","125","contato@pastelariasãojosé.com","11684655517","Quessia Oleiro ", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Hotel Lux", "77544870000156","04722218","156","contato@hotellux.com","11477904152","Fabrício Breia ", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 
insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values("Bianca e Larissa Assessoria Jurídica Ltda", "40710724000143","89036140","98","manutencao@biancaelarissaassessoria.com.br","4728204151","Júnior Foquiço Álvares", "bebidas|bebidas alcolicas|biscoitos e salgadinhos|carnes, aves e peixes|congelados|doces e sobremesas|farinhas e grãos"); 

select * from tb_fornecedor order by razao_social_fornecedor;