use superteste;
create table tb_login(
	id_user int auto_increment  not null,
	nm_funcionario varchar (45),
	login_user varchar(45),
	senha_user varchar(45),
	permissao_user enum("administrador","caixa","almoxarife"),
	constraint primary key(id_user)
);
insert into tb_login (nm_funcionario,login_user,senha_user,permissao_user) values ('eduardo','edu021','senha','caixa');
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

select id_user ,nm_funcionario nome, login_user login, senha_user senha, permissao_user from tb_login order by id_user desc;