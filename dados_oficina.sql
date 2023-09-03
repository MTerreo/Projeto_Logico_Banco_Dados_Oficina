use oficina;

-- Cliente PF:
insert into cliente_pf (nome_cliente_pf, CPF, aniversario, endereco, telefone, email)
		values  ('Claudia Cristina ','98765432198','1995-05-20','Curitiba ','41999945834','claudiacristina@teste.com'),
				('João Luis de Sousa','45682719346','1861-11-24','Florianópolis','41925415698','joaoluis@teste.com'),
				('Lara da Silva','32654897139','1942-04-26','Florianópolis','41987458963','larasilva@teste.com'),
				('Leonardo de Oliveira','15645897698','1985-08-17','São Paulo','21995987458','leonardosilva@teste.com'),
				('Mauro Ferreira Marques','13345678941','1994-06-04','São Paulo','41995265148','mauroferreira@teste.com'),
				('Caio Mario Barboza','13564987594','1971-12-28','São Paulo','41996325874','caiomario@teste.com'),
				('Larissa Ferreira Rodrigues ','32566598748','1997-06-04','Brasília ','41998745685','larissaferreira@teste.com'),
				('Victor Vieira','52487965497','1972-11-12','Curitiba ','41996254478','victorsilva@teste.com');

-- Cliente PJ: 
insert into cliente_pj (nome_empresa, nome_cliente_pj, CNPJ, telefone, email, endereco)
		values ('Brasspress Transportes Urgentes Ltda','Brasspress Transportes Urgentes','48740351000165','11902541159','frete@brasspress.com','Rua Antônio José Gorges'),
				('Expresso São Miguel Ltda','Expresso São Miguel ','00428307000430','21998456789','silvamiguel@saomiguel.com','Servidão Ivo Atanásio Veiga'),
				('Fedex Brasil Logistica e Transporte LTDA','Fedex ','10970887000285', '41995462365','frete@fedex.com','Rua do Expedicionário'),
				('EMPRESA BRASILEIRA DE CORREIOS E TELEGRAFOS','CORREIOS','34028316000103','51987456852','frete@correios.com.br', 'Rua Pinheirinho'),
				('Miguel e Ana Transportes Ltda','Migua Transportes','23676988000109','48929669850','suporte2@migueleanafinanceiraltda.com.br','Servidão Maria Alexandrino'),
				('Lívia e Severino Entregas ME','LISE Entregas','03473370000134','48925442294','pesquisa2@liviaeseverinoadegame.com.br','Rua João Luiz Duarte');

-- Cliente:
insert into cliente (id_cliente_pf,id_cliente_pj) values
		(1,null),
		(2,null),
		(3,null),
		(4,null),
		(null,3),
		(null,4),
		(null,5),
		(null,6);

-- Veiculo:
insert into veiculo (id_veiculo_cliente, tipo_veiculo, placa, marca, modelo, ano_fabricacao) values
		('1','Moto','BAP9459','Yamaha','FACTOR 150 ED','2010'),
		('3','Moto','AOV4450','Yamaha','R3 MONSTER ABS','2018'),
		('4','Moto','AEZ4295','BMW','G 310 GS','2022'),
		('3','Moto','AYI9076','BMW','R 1250 GS','2019'),
		('2','Moto','AYI9075','Honda','CG 160','2007'),
		('1','Carro','BEQ6210','Toyota','Hilux','2000'),
		('2','Carro','ATC8042','Volvo','S60','2006'),
		('2','Carro','AXR5925','Renault','Sandero','2004'),
		('2','Carro','AFZ6951','Jeep','Compass','2015'),
		('3','Triciclo','ALG8240','Cam-Am','Spider','2016'),
		('4','Triciclo','BCQ4581','Triciclos Delta','Delta','2020'),
		('4','Van','AXH1341','Ford ','Transit','2018'),
		('3','Van','AHU6435','Ford ','Transit','2019'),
		('2','Van','ATU9737','Ford ','Transit','2020'),
		('1','Van','BBW4657','Renault ','Master','2021'),
		('1','Caminhão','AJZ4028','Scania','Linha P','1998'),
		('2','Caminhão','AZQ6884','Scania','Linha P','2000'),
		('3','Caminhão','BCN2906','Scania','Linha G','2006'),
		('4','Caminhão','ATW9211','Scania','Linha R','2015');


-- Equipes:
insert into equipe (id_equipe, sistema, responsavel) values
		('1','Motor','João Silva'),
		('2','Suspensão','Thiago Menezes'),
		('3','Eletrica','Alfredo Pereira'),
		('4','Carroceria','Domingos Sousa');

-- Funcionarios: 
insert into funcionario (id_funcionario_equipe, Emcode, Emname, CPF, aniversario, endereco, unidade, sistema, data_admissao)
		values ('1','100010','João Silva','11122233344','1975-10-25','Rua Jaracatiá,Curitiba','Chefe Mecânica','Motor','2010-08-21'),
				('1','100020','Pedro Souza','11125634587','1980-09-15','Rua São João Evangelista','Mecânico','Motor', '2012-12-01'),
				('3','100030','Matheus Henrique','11155599988','1988-01-13','Rua Maximiliano Boscardin','Mecânico','Motor', '2012-12-01'),
				('1','100040','José Flores','22255588874','1995-06-27','Rua Andrea Zílio ','Assistente mecânico','Motor', '2020-04-05'),
				('4','100050','Victor Nascimento','33366655587','1997-08-30','Rua Ângelo Cretã','Assistente mecânico','Motor', '2020-04-06'),
				('2','200010','Thiago Menezes','15948755854','1984-02-28','Rua Isaulino Francisco Brito','Chefe Mecânica','Suspensão','2007-08-21'),
				('2','200020','Théo Soares','11555522248','1990-10-11','Praça Kelly Elizabette da Silva ','Mecânico','Suspensão','2015-12-01'),
				('2','200030','Joaquim Rodrigues','77788844458','1992-10-30','Rua Darci Luísa Belarmino','Mecânico','Suspensão','2015-12-01'),
				('2','200040','Carlos Fernandes','99955588847','1997-12-25','Rua Miguel Ângelo Pelanda','Assistente mecânico','42978475892','2021-04-05'),
				('2','200050','Miguel Gonçalves','44455566632','1994-05-18','Rua Valentin Deda ','Assistente mecânico','Suspensão','2021-04-06'),
				('4','300010','Alfredo Pereira','44455522236','1979-11-30','Rua Bernardo Glodzinski ','Chefe Eletrica','Eletrica','2013-08-21'),
				('3','300020','Bento Costa','44411155592','1982-07-15','Rua Arcendino Rosa Neves ','Eletricista','Eletrica','2017-12-01'),
				('3','300030','Fernando Ferreira','55544466687','1999-05-13','Rua Guilherme Matter ','Eletricista','Eletrica','2017-12-01');
		


-- Tabela_precos: 
insert into tabela_precos (tipo_servico,sistema,pecas_troca,pecas_quantidade,pecas_preco,mao_de_obra,valor_total) values
		('Conserto','Motor','Oleo','5','24.90','80.00','204.5'),
		('Conserto','Motor','Correia dentada','2','60.59','210.90','332.08'),
		('Conserto','Motor','Bico Injetor','4','47.90','180.49','372.09'),
		('Conserto','Motor','Bomba de Direção Hidraulica','1','220.60','369.80','590.40'),
		('Conserto','Suspensão','Mola','4','180.00','237.00','957.00'),
		('Conserto','Suspensão','Amortecedor','4','120.20','589.90','1070.70'),
		('Conserto','Suspensão','Braços','8','90.20','130.90','852.50'),
		('Conserto','Suspensão','Barra estabilizadora','4','90.20','130.90','491.70'),
		('Conserto','Carroceria','Coletor de escape','1','99.90','186.50','286.40'),
		('Conserto','Carroceria','Silenciador','1','66.65','98.30','164.95'),
		('Conserto','Carroceria','Catalisador','1','490.00','200.10','690.10'),
		('Conserto','Eletrica','Motor de arranque','1','617.40','137.90','755.30'),
		('Conserto','Eletrica','Alternador','1','300.00','213.50','513.50'),
		('Conserto','Eletrica','Distribuidor','1','319.90','156.45','476.35'),
		('Revisão','Motor',null,null,null,'100.00','100.00'),
		('Revisão','Suspensão',null,null,null,'100.00','100.00'),
		('Revisão','Eletrica',null,null,null,'100.00','100.00'),
		('Revisão','Carroceria',null,null,null,'100.00','100.00');
        
-- Estoque_pecas: 
insert into estoque_pecas (nome_peca, quantidade_estoque, valor_unitario) values
		('Oleo','20','24.90'),
		('Correia dentada','13','60.59'),
		('Bico Injetor','15','47.90'),
		('Bomba de Direção Hidraulica','2','220.60'),
		('Mola','40','180.00'),
		('Amortecedor','40','120.20'),
		('Braços','16','90.20'),
		('Barra estabilizadora','16','90.20'),
		('Coletor de escape','4','99.90'),
		('Silenciador','4','66.65'),
		('Catalisador','6','490.00'),
		('Motor de arranque','3','617.40'),
		('Alternador','9','300.00'),
		('Distribuidor','5','319.90');

-- Orcamento: 
insert into orcamento (id_orcamento_cliente, numero_orcamento, aprovado, data_orcamento, valor_orcamento, data_validade) values
		('1','20200010','Sim','2020-01-06','204.5','2020-01-16'),
		('3','20200020','Não','2020-01-18','332.08','2020-01-28'),
		('4','20200021','SIm','2020-02-10','372.09','2020-02-20'),
		('2','20200030','SIm','2020-02-15','590.40','2020-02-25'),
		('3','20200040','SIm','2020-03-05','957.00','2020-03-15'),
		('4','20200050','SIm','2020-03-18','1070.70','2020-03-28'),
		('2','20200060','SIm','2020-04-24','852.50','2020-05-04'),
		('3','20200070','SIm','2020-04-30','491.70','2020-05-10'),
		('3','20200080','SIm','2020-05-11','286.40','2020-05-21'),
		('4','20200090','SIm','2020-06-16','164.95','2020-06-26'),
		('4','20200100','SIm','2020-06-27','690.10','2020-07-07'),
		('1','20200110','SIm','2020-07-18','755.30','2020-07-28'),
		('2','20200120','SIm','2020-08-21','513.50','2020-08-30'),
		('2','20200130','SIm','2020-08-26','476.35','2020-09-06'),
		('2','20200140','SIm','2020-09-08','100.00','2020-09-18'),
		('1','20200150','SIm','2020-09-12','100.00','2020-09-22'),
		('3','20200160','SIm','2020-10-06','100.00','2020-10-16'),
		('1','20200180','SIm','2020-11-26','204.5','2020-12-06'),
		('2','20200190','SIm','2020-11-30','332.08','2020-12-10'),
		('3','20200200','SIm','2020-12-14','372.09','2020-12-24'),
		('1','20210010','SIm','2021-01-06','590.40','2021-01-16'),
		('2','20210020','SIm','2021-01-18','957.00','2021-01-28'),
		('3','20210030','SIm','2021-02-10','1070.70','2021-02-20'),
		('4','20210040','Não','2021-02-15','852.50','2021-02-25'),
		('1','20210050','Não','2021-03-05','491.70','2021-03-15'),
		('3','20210060','Não','2021-03-18','286.40','2021-03-28'),
		('2','20210070','Não','2021-04-24','164.95','2021-05-04'),
		('4','20210080','Sim','2021-04-30','690.10','2021-05-10'),
		('1','20210090','Sim','2021-05-11','755.30','2021-05-21'),
		('4','20210100','Sim','2021-06-16','513.50','2021-06-26'),
		('1','20210110','Sim','2021-06-27','476.35','2021-07-07'),
		('4','20210120','Sim','2021-07-18','100.00','2021-07-28'),
		('3','20210130','Sim','2021-08-21','100.00','2021-08-30'),
		('1','20210140','Sim','2021-08-26','100.00','2021-09-06'),
		('1','20210150','Sim','2021-09-08','100.00','2021-09-18'),
		('2','20210160','Sim','2021-09-12','204.5','2021-09-22'),
		('1','20210170','Sim','2021-10-06','332.08','2021-10-16'),
		('2','20220010','Sim','2022-01-06','372.09','2022-01-16'),
		('3','20220020','Sim','2022-01-18','590.40','2022-01-28'),
		('3','20220030','Sim','2022-02-10','957.00','2022-02-20'),
		('3','20220040','Sim','2022-02-15','1070.70','2022-02-25'),
		('2','20220050','Não','2022-03-05','852.50','2022-03-15'),
		('1','20220060','Sim','2022-03-18','491.70','2022-03-28'),
		('4','20220070','Sim','2022-04-24','286.40','2022-05-04'),
		('3','20220080','Sim','2022-04-30','164.95','2022-05-10'),
		('4','20220090','Sim','2022-05-11','690.10','2022-05-21'),
		('1','20220100','Sim','2022-06-16','755.30','2022-06-26'),
		('3','20220110','Sim','2022-06-27','513.50','2022-07-07'),
		('2','20220120','Sim','2022-07-18','476.35','2022-07-28'),
		('3','20220130','Sim','2022-08-21','100.00','2022-08-30');



-- Precos_orcamento:
insert into valor_orcado (id_valor_orcado, id_valor_tabela_precos) values
		(1,1),
		(2,2),
		(3,3),
		(4,4),
		(3,1),
		(3,3),
		(2,2),
		(1,1),
		(4,4),
		(1,1),
		(1,1),
		(2,1),
		(2,1),
		(2,4),
		(2,4),
		(2,3),
		(2,1),
		(3,1),
		(1,3),
		(2,3),
		(3,1),
		(4,1),
		(3,4),
		(3,2),
		(3,1),
		(3,2),
		(3,1),
		(2,4),
		(1,3),
		(2,4),
		(3,1),
		(1,4),
		(4,3),
		(1,2),
		(4,1),
		(4,1);



-- Ordem_servico: 
insert into ordem_servico (id_os_veiculo,id_os_equipe,id_os_orcamento,numero_servico,data_abertura,pecas_necessarias,valor_servico,status,data_termino) values
		('1','1','1','10000010','2020-01-16','Oleo','204.5','Concluida','2020-01-16'),
		('1','1','2','10000011','2020-01-28','Correia dentada','332.08','Cancelada','2020-01-16'),
		('1','1','3','10000012','2020-02-20','Bico Injetor','372.09','Concluida','2020-02-20'),
		('1','1','4','10000013','2020-02-25','Bomba de Direção Hidraulica','590.40','Concluida','2020-02-25'),
		('1','2','3','10000014','2020-03-15','Mola','957.00','Concluida','2020-03-15'),
		('1','2','1','10000015','2020-03-28','Amortecedor','1070.70','Concluida','2020-03-28'),
		('1','2','1','10000016','2020-05-04','Braços','852.50','Concluida','2020-05-04'),
		('1','2','1','10000017','2020-05-10','Barra estabilizadora','491.70','Concluida','2020-05-10'),
		('1','3','1','10000018','2020-05-21','Coletor de escape','286.40','Concluida','2020-05-21'),
		('1','3','1','10000019','2020-06-26','Silenciador','164.95','Concluida','2020-06-26'),
		('1','3','2','10000020','2020-07-07','Catalisador','690.10','Concluida','2020-07-07'),
		('1','4','2','10000021','2020-07-28','Motor de arranque','755.30','Concluida','2020-07-28'),
		('1','4','1','10000022','2020-08-30','Alternador','513.50','Concluida','2020-08-30'),
		('1','4','4','10000023','2020-09-06','Distribuidor','476.35','Concluida','2020-09-06'),
		('1','4','1','10000024','2020-09-18','Catalisador','100.00','Concluida','2020-09-18'),
		('2','2','1','10000025','2020-09-22','Silenciador','100.00','Concluida','2020-09-22'),
		('2','3','4','10000069','2023-01-05','Amortecedor','1070.70','Em execução','2023-01-05');


-- Pecas_os: 
insert into os_pecas (id_pecas_estoque_pecas,id_pecas_ordem_servico,id_pecas_orcamento) values
		(1,1,1),
		(2,2,2),
		(3,3,3),
		(4,4,4),
		(1,2,3),
		(3,2,1),
		(2,3,1),
		(2,3,4),
		(4,3,1);