create table tb_cliente(
	razao_social_cliente varchar(45),
	cnpj_cliente varchar(18) not null,
	cep_cliente varchar(9),
	num_ender_cliente varchar(10),
	email_cliente varchar(70),
	tel_cliente varchar(20),
	nm_repres_cliente varchar(70),
	constraint primary key(cnpj_cliente)
);

insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("senai", "34843554484005","88331500","3445","senai@gmal.com.br","91997293911","Guilherme Keil "); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Mecânica Autêntica", "32511117449905","21069038","564","contato@mecanica-autentica.com.br","82317234419","ANTONIO SILVA CAMPOS"); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Pizzaria do Barão", "11708853698503","853033391","345","contato@pizzaria-do-barao.com.br","98378260890","PEDRO ROCHA ALMEIDA"); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Pastelaria Autêntica", "27749151000101","57716230","45","contato@pastelaria-autentica.com.br","91832699993","MARIA OLIVEIRA MELO"); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Padaria Genuíno", "02789402568777","58417145","492","contato@padaria-genuino.com.br","48903125315","PEDRO RAMOS MEDEIROS"); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Pizzaria União", "03213427151881","59763527","1245","contato@pizzaria-uniao.com.br","63769918710","Nelsa Pedro "); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Contabilidade Teixeira", "43101623000163","03908350","123","contato@contabilidadeteixeira.com","11385163222","Laureana Casqueira "); 
insert into tb_cliente(razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Hotel Silva", "46011395000129","19872038","456","contato@hotelsilva.com","11544062775","Eliézer Camilo "); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Comércio Rainha", "73102374000191","02930477","789","contato@comérciorainha.com","11307213045","Marcelo Mendes "); 
insert into tb_cliente(razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Restaurante Visão", "34172442000137","02756245","101","contato@restaurantevisão.com","11753839552","Dayra Novais "); 
insert into tb_cliente(razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Pastelaria São José", "62985430000167","05511965","125","contato@pastelariasãojosé.com","11684655517","Quessia Oleiro "); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Hotel Lux", "77544870000156","04722218","156","contato@hotellux.com","11477904152","Fabrício Breia "); 
insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values("Bianca e Larissa Assessoria Jurídica Ltda", "40710724000143","89036140","98","manutencao@biancaelarissaassessoria.com.br","4728204151","Júnior Foquiço Álvares"); 
delete from tb_cliente where cnpj_cliente = '';
select * from tb_cliente order by razao_social_cliente;