create database test;
use test;
create table tb_login(
	id_user int auto_increment  not null,
	nm_funcionario varchar (45),
	login_user varchar(45),
	senha_user varchar(45),
	permissao_user enum("administrador","caixa","almoxarife"),
	constraint primary key(id_user)
);

insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Bruna de Paula Ribeiro","bruna_p_ribeiro","bruninhapamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Luana Estevan da Costa","luana_e_costa","luanapamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Pedro Pedreira","pedro_pedreira","pedropamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Avelino Faria Casalinho","avelino_f_casalinho","avelinopamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Alvin Vergueiro Taveira","alvin_v_taveira","alvinpamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Hayla Caeiro Ventura","hayla_c_ventura","haylapamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Mirian Ulhoa Neiva","miria_u_neiva","mirianpamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Laysla Regodeiro Queiroga","laysla_r_queiroga","layslapamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Luz Nogueira Dorneles","luz_n_dorneles","luzpamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Ryan Boga Fitas","ryan_b_fitas","ryanpamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Fábia Azeredo Castelhano","fabia_a_castelhano","fabiapamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Gusttavo Poças Albernaz","gusttavo_p_albernaz","albernazpamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Penélope Fontinha Matosinhos","penelope_f_matosinhos","penelopepamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Vitor Alcântara Passos","vitor_a_passos","vitorpamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Eden Velasco Lages","eden_v_lages","edenpamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Jerónimo Bezerril Ferrão","jeronimo_b_ferrao","geronimopamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Gisela Casqueira Belém","gisela_c_belem","giselapamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Mustafa Vilas Boas Frota","mustafa_v_boas","mustafapamonha","caixa");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Jandira Abreu Grilo","jandira_a_grilo","jandirapamonha","almoxarife");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Gaia Cambezes Domingues","gaia_c_domingues","gaiapamonha","almoxarife");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Lucas Damásio Brandão","lucas_d_brandao","lucaspamonha","almoxarife");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Denzel Silveira Tigre","denzel_s_tigre","denzelpamonha","almoxarife");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Cristóvão Angelim Viegas","cristovam_a_viegas","cristovaopamonha","almoxarife");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Olinda Valgueiro Moreira","olinda_v_moreira","olindapamonha","administrador");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Ângela Milheirão Fernandes","angela_m_fernandes","angelapamonha","administrador");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("Jénifer Martinho Ribeiro","jenifer_m_ribeiro","jeniferpamonha","administrador");   
insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values("administrador","administrador","admin","administrador");   

select * from tb_login;

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

select * from tb_cliente order by razao_social_cliente;
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

select g.nm_genero, c.nm_categoria from tb_generos_produtos g inner join tb_categorias_produtos c on g.id_genero = c.id_genero;
select c.nm_categoria, g.nm_genero from tb_categorias_produtos c inner join tb_generos_produtos g on g.id_genero = c.id_genero;
create table tb_mercadoria (
id_mercadoria int auto_increment not null,
nm_produto varchar(70),
dt_validade date,
vlr_compra decimal(10,2),
vlr_venda_atacado decimal(10,2),
vlr_venda_varejo decimal(10,2),
desc_produto_porcent int,
qntd_lote int,
qntd_min_atacado int,
cod_barra varchar(13),
id_categoria int not null,
constraint primary key(id_mercadoria),
constraint foreign key(id_categoria) references tb_categorias_produtos(id_categoria)
);

insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Bebida Lactea Chocolate Friminho Frimesa 200ml","2024/11/01",0.59,1.09,1.59,"10","1000","6","1000000",1);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Bebida Lactea Chocolate Tirol 190ml","2024/11/01",0.70,1.15,1.90,"10","1000","6","1000001",1);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Bebida Lactea Chocolate Toddynho 200ml","2024/11/01",0.80,1.45,2.00,"10","1000","6","1000002",1);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Bebida Lactea Chocolate Nestle 200ml","2024/11/01",0.40,1.00,1.59,"10","1000","6","1000003",1);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Leite UHT Desnatado Tirol 1l","2024/11/01",4.40,5.10,5.30,"10","1000","12","1000004",39);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Leite UHT Integral Ninho 1l","2024/02/18",4.50,5.70,5.89,"10","1000","12","1000005",39);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Leite UHT Semi Desnatado Terra Viva 1l","2024/01/17",3.90,4.80,4.99,"10","1000","12","1000006",39);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Leite UHT Integral Tirol 1l","2024/02/28",4.40,5.10,5.30,"10","1000","12","1000044",39);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Leite em Pó Ninho Instantâneo Zero Lactose","2023/02/11",17.00,23.00,25.00,"10","1000","3","1000043",38);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Leite em Pó Instantâneo Piracanjuba Sachê 400g","2023/02/11",15.00,17.80,20.00,"10","1000","3","1000008",38);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Doce de Leite Mu-Mu Chocolate 380g","2023/03/05",3.00,6.00,6.89,"10","1000","6","1000042",22);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Doce de Leite Tradicional Pote Tirol 350g","2023/04/20",4.00,6.80,7.30,"10","1000","6","1000010",22);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Doce de Leite Mu-Mu 350g","2023/05/30",3.00,6.00,6.89,"10","1000","6","1000009",22);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Barra de Chocolate Ao Leite Hershey's 92g","2023/06/30",2.40,3.75,4.99,"10","1000","4","1000012",21);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Barra de Chocolate Garoto Chocolate ao Leite 90g","2023/06/15",3.20,4.00,4.79,"10","1000","4","1000013",21);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Barra de Chocolate Lacta ao Leite 90g","2023/07/10",4.50,5.80,6.09,"10","1000","4","1000014",21);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Barra de Chocolate Nestlé Classic Ao Leite 90g","2023/08/10",3.50,4.90,5.70,"10","1000","4","1000015",21);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Barra de Chocolate Nestlé Suflair Ao Leite 80g","2023/09/10",3.50,5.70,6.30,"10","1000","4","1000016",21);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Barra de Chocolate Neugebauer ao Leite 90g","2023/10/02",2.50,3.70,4.40,"10","1000","4","1000017",21);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Biscoito Piraquê Leite Maltado Light 200g","2024/11/01",3.20,4.99,5.39,"0","1000","3","1000018",10);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Biscoito Rosquinha Leite Zero Lactose Girassol 300g","2022/06/01",2.50,4.00,4.70,"0","1000","3","1000019",10);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Choco Biscuit Chocolate Ao Leite Bauducco 80g","2022/11/12",4.20,5.39,6.39,"0","1000","3","1000020",10);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Biscoito Mousse Chocolate ao Leite Isabela 130g","2022/12/28",1.90,2.79,3.45,"10","1000","3","1000021",10);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Biscoito Leite Isabela 400g","2022/06/15",3.10,4.99,5.79,"7","1000","3","1000022",10);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Ave Maria Sêmola Galo 500g","2022/12/05",3.00,4.00,4.89,"00","1000","4","1000023",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Espaguete Integral Isabela 500g","2022/01/02",3.20,4.79,5.59,"00","1000","4","1000024",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Espaguete Urbano S Glúten 500g","2022/06/02",2.90,3.99,4.99,"0","1000","4","1000025",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Isabela Parafuso Sêmola 500g","2025/05/13",2.79,3.89,4.30,"0","1000","4","1000026",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Massa Fresca Talharim Aijô 500g","2025/05/15",6.00,7.79,8.49,"0","1000","4","1000027",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Parati Parafuso C Ovos 500g","2025/05/12",2.40,3.79,4.89,"15","1000","4","1000028",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Parati Ninho Largo C Ovos 500g","2025/05/12",2.40,3.79,4.89,"20","1000","4","100041",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Arroz Arbóreo Tipo 1 Urbano 1kg","2024/09/28",9.89,12.19,14.19,"10","1000","3","1000029",40);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Arroz Branco Kiarroz 1kg","2022/09/13",2.00,3.00,4.09,"50","1000","3","1000030",40);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Arroz Branco Kiarroz 5kg","2022/09/13",14.80,17.90,19.99,"0","1000","3","1000031",40);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Arroz Buriti Parboilizado 1Kg","2022/08/07",2.00,3.30,4.79,"10","1000","3","1000032",40);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Preto Caldão 1kg","2024/08/06",.29,6.29,7.39,"40","1000","3","1000033",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Preto Kifeijão 1kg","2024/08/05",5.00,6.70,7.89,"50","1000","3","1000034",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Carioca Urbano T1 1kg","2022/07/04",5.19,8.29,9.79,"0","1000","3","1000035",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Carioca Kifeijão 1kg","2022/07/04",2.69,4.50,6.79,"0","1000","3","1000036",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Vermelho Urbano T1 1kg","2023/04/03",7.19,8.19,9.99,"0","1000","3","1000037",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Óleo de Canola Salada 900ml","2023/04/03",12.19,16.29,19.49,"0","1000","3","1000038",43);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Óleo Soja Liza 900ml","2023/04/02",6.70,8.99,10.99,"0","1000","3","1000039",43);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Óleo Soja Soya 900ml","2023/03/01",8.29,11.89,13.19,"10","1000","3","1000040",43);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Açúcar Baunilha Tubo Tropical 90g","2024/06/07",5.19,8.19,9.29,"0","1000","6","1000044",44);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Açúcar Cristal Colombo 1kg","2024/05/28",3.19,5.29,6.39,"15","1000","6","1000048",44);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Açúcar Cristal União 1kg","2024/04/28",3.20,4.29,5.29,"0","1000","6","1000049",44);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Açúcar Demerara Natural Caravelas 1kg","2024/03/27",3.19,4.99,5.79,"0","1000","6","1000050",44);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Farinha Branca Mandioca Peixer 1kg","2024/02/28",4.19,6.79,7.29,"0","1000","3","1000051",45);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Farinha de Trigo Sudoeste 1kg","2024/02/18",2.19,3.79,4.39,"0","1000","3","1000052",45);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Farinha Lactea Nestlé 210g","2024/01/17",4.19,6.99,8.99,"10","1000","3","1000053",45);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Asinha de Frango Ave Serra 1kg","2024/02/28",12.39,15.19,17.69,"12","1000","3","1000054",13);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Coxa e Sobrecoxa S Osso IQF C-Vale 1kg","2023/02/11",13.00,20.10,22.39,"12","1000","3","1000055",13);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Filé Peito de Frango Ave Serra 1kg","2023/02/11",15.00,18.19,21.19,"0","1000","3","1000056",13);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Carne Bife de Acem Congelado Alca 1kg","2023/03/05",22.89,33.10,37.19,"0","1000","3","1000057",14);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Carne Bife de Acem Congelado Alca 2kg","2023/04/20",65.99,72.00,75.00,"0","1000","3","1000058",14);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Carne Miolo de Alcatra São João 1.1kg","2023/05/30",50.29,58.00,60.79,"0","1000","6","1000059",14);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Camarão 7 Barbas Limpo IQF Luzitania 1kg","2023/06/30",32.99,40.39,41.39,"10","1000","4","1000060",16);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Filé de Pescada IQF Pioneira 800g","2023/06/15",13.99,20.19,21.99,"10","1000","4","1000061",16);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Salmão em Pedaços Congelado C Pele Komdelli 500g","2023/07/10",45.00,54.99,56.79,"15","1000","4","1000062",16);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Abacaxi Graudo Pérola Un","2023/08/10",7.00,9.39,9.39,"00","1000","4","1000063",30);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Banana Branca 1kg","2023/09/10",5.19,6.49,6.49,"0","1000","4","1000064",30);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Caqui Fuyu 1kg","2023/10/02",7.00,9.99,9.99,"0","1000","4","1000065",30);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Laranja Lima 1kg","2024/11/01",5.00,6.49,6.49,"0","1000","3","1000066",30);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Milho Verde Bandeja","2022/06/01",6.99,9.79,10.79,"0","1000","3","1000067",32);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Batata Doce 1kg","2022/11/12",2.00,3.79,3.79,"0","1000","3","1000068",32);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Batata Inglesa 1kg","2022/12/28",5.00,6.19,6.19,"10","1000","3","1000069",32);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Cabeça de Repolho Unidade","2022/06/15",3.00,4.19,4.19,"7","1000","3","1000070",32);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Ave Maria Sêmola Galo 500g","2022/10/05",3.00,4.00,4.89,"10","1000","6","1000071",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Espaguete Integral Isabela 500g","2022/02/02",3.20,4.79,5.59,"10","1000","6","1000072",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Espaguete Urbano S Glúten 500g","2022/02/02",2.90,3.99,4.99,"10","1000","6","1000073",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Isabela Parafuso Sêmola 500g","2025/06/13",2.79,3.89,4.30,"10","1000","6","1000074",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Massa Fresca Talharim Aijô 500g","2025/06/15",6.00,7.79,8.49,"10","1000","6","1000075",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Parati Parafuso C Ovos 500g","2025/12/12",2.40,3.79,4.89,"10","1000","6","1000076",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Macarrão Parati Ninho Largo C Ovos 500g","2025/12/12",2.40,3.79,4.89,"10","1000","6","100077",29);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Arroz Arbóreo Tipo 1 Urbano 1kg","2024/06/28",9.89,12.19,14.19,"10","1000","6","1000078",40);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Arroz Branco Kiarroz 1kg","2022/06/13",2.00,3.00,4.09,"10","1000","6","1000079",40);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Arroz Branco Kiarroz 5kg","2022/12/13",14.80,17.90,19.99,"10","1000","6","1000080",40);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Arroz Buriti Parboilizado 1Kg","2022/12/07",2.00,3.30,4.79,"10","1000","6","1000081",40);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Preto Caldão 1kg","2024/05/06",.29,6.29,7.39,"10","1000","6","1000082",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Preto Kifeijão 1kg","2024/09/05",5.00,6.70,7.89,"10","1000","6","1000083",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Carioca Urbano T1 1kg","2022/03/04",5.19,8.29,9.79,"10","1000","6","1000084",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Carioca Kifeijão 1kg","2022/02/04",2.69,4.50,6.79,"10","1000","6","1000085",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Feijão Vermelho Urbano T1 1kg","2023/12/03",7.19,8.19,9.99,"10","1000","6","1000086",41);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Bebida Lactea Chocolate Friminho Frimesa 200ml","2023/03/03",0.59,1.09,1.59,"10","1000","6","1000087",1);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Bebida Lactea Chocolate Friminho Frimesa 200ml","2023/03/02",0.59,1.09,1.59,"10","1000","6","1000088",1);
insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values("Bebida Lactea Chocolate Friminho Frimesa 200ml","2024/02/20",0.59,1.09,1.59,"10","1000","6","1000089",1);

select * from tb_mercadoria;
select m.nm_produto produto, m.dt_validade validade, m.vlr_compra preço_pago, m.vlr_venda_atacado preço_atacado, m.vlr_venda_varejo preço_varejo, m.desc_produto_porcent desconto, m.qntd_lote quantidade, m.qntd_min_atacado quantidade_atacado, m.cod_barra, c.nm_categoria categoria from tb_mercadoria m inner join tb_categorias_produtos c on c.id_categoria = m.id_categoria;

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
create table tb_itens_venda(
	id_itens_venda int not null auto_increment,
	id_mercadoria int NOT NULL,
    cnpj_cliente varchar(70) not null,
    qtd_produto int,
	vlr_unit decimal(10,2),
	vlr_total decimal(10,2),
	
	constraint primary key(id_itens_venda),
	constraint foreign key(id_mercadoria) references tb_mercadoria(id_mercadoria),
	constraint foreign key(cnpj_cliente) references tb_pedidos_venda(cnpj_cliente)
);

insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(1,100,'34843554484005',1.09,1.09*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(2,100,'34843554484005',1.15,1.15*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(3,100,'34843554484005',1.45,1.45*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(4,100,'34843554484005',1.00,1.00*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(5,25,'34843554484005',5.10,5.10*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(1,15,'32511117449905',1.09,1.09*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(2,50,'32511117449905',1.15,1.15*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(3,20,'32511117449905',1.45,1.45*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(4,25,'32511117449905',1.00,1.00*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(5,10,'32511117449905',5.10,5.10*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(1,10,'11708853698503',1.09,1.09*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(2,10,'11708853698503',1.15,1.15*100);
insert into tb_itens_venda(id_mercadoria,qtd_produto,cnpj_cliente,vlr_unit,vlr_total) values(3,10,'11708853698503',1.45,1.45*100);

select * from tb_itens_venda i inner join tb_pedidos_venda p, tb_mercadoria m where m.id_mercadoria = i.id_mercadoria and i.cnpj_cliente = p.cnpj_cliente order by i.id_itens_venda;

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