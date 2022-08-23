--- inserções professor ---
INSERT INTO professor (nome, email, titulo)
VALUES 
('Ana Beatriz de Oliveira', 'biaoliveira@ufscar.br', 'Doutora'),
('Maria de Jesus Dutra dos Reis', 'dmjr@ufscar.br', 'Doutora'),
('Daniel Rodrigo Leiva', 'daniel.leiva@ufscar.br', 'Doutor'),
('Luciana Cristina Salvatti Coutinho', 'lucscoutinho@ufscar.br', 'Doutora'),
('Pedro Sergio Fadini', 'psfadini@ufscar.br', 'Doutor'),
('Diana Junkes Bueno Martha', 'dijunkes@ufscar.br', 'Doutora'),
('Rodrigo Constante Martins', 'rmartins@ufscar.br', 'Doutor'),
('Luiz Eduardo Moschini', 'lemoschini@ufscar.br', 'Doutor'),
('Ducinei Garcia', 'ducineigarcia@ufscar.br', 'Doutora'),
('Fábio Gonçalves Pinto', 'fgpinto@ufscar.br', 'Doutor'),
('Edna Hércules Augusto', 'demachef@ufscar.br', 'Doutora'),
('Luiz Manoel Almeida', 'luizmanoel@ufscar.br', 'Doutor'),
('Izaura do Carmo Alcoforado', 'izaura@ufscar.br', 'Mestra'),
('Jeanne Liliane Marlene Michel', 'jeanne.michel@ufscar.br', 'Doutora'),
('Antônio Roberto de Carvalho', 'antbeto@ufscar.br', 'Doutor'),
('Djalma Ribeiro Júnior', 'djalmajr@ufscar.br', 'Doutor'),
('Gisele Aparecida Zutin Castelani', 'giseli@ufscar.br', 'Mestra'),
('Maria da Graça Gama Melão', 'dmgm@ufscar.br', 'Doutora'),
('Isabela Aparecida de Oliveira Lussi', 'bellussi@ufscar.br', 'Doutora'),
('Luiz Fernando de Oriani e Paulillo', 'dlfp@ufscar.br', 'Doutor'),
('Guillermo Antonio Lobos Villagra', 'lobos@dm.ufscar.br', 'Doutor'),
('Rodrigo Vilela Rodrigues', 'rvilela@ufscar.br', 'Doutor'),
('Monica Fabiana Bento Moreira Thiersch', 'monicathiersch@ufscar.br', 'Doutora'),
('André Cordeiro Alves dos Santos', 'andrecas@ufscar.br', 'Doutor'),
('Maria Walburga dos Santos', 'walburga@ufscar.br', 'Doutora'),
('Ana Lúcia Brandl', 'albrandl@ufscar.br', 'Doutora'),
('Marystela Ferreira', 'marystela@ufscar.br', 'Doutora'),
('Ana Cristina Juvenal da Cruz', 'anacjcruz@gmail.com', 'Doutora'),
('Adélcio Camilo Machado', 'adelcio.camilo@ufscar.br', 'Doutor'),
('Ricardo Toshio Fujihara', 'rtfujihara@ufscar.br', 'Doutor'),
('Adriana Cavalieri Sais', 'acsais@ufscar.br', 'Doutora'),
('Giulianna Rondineli Carmassi', 'giulianna@ufscar.br', 'Doutora'),
('Henrique Carmona Duval', 'henriquecarmona@ufscar.br', 'Doutor');


--- inserção reitoria ---
INSERT INTO reitoria (localizacao, email) VALUES (NULL, 'reitoria@ufscar.br');

--- inserção dos campus ---
INSERT INTO campus (nome, reitoria_id, localizacao, endereco) VALUES ('Campus São Carlos', 1, NULL, 'Rod. Washington Luís km 235 - SP-310 - São Carlos'); 
INSERT INTO campus (nome, reitoria_id, localizacao, endereco) VALUES ('Campus Araras', 1, NULL, 'Rod. Anhanguera km 174 - SP-330 - Araras'); 
INSERT INTO campus (nome, reitoria_id, localizacao, endereco) VALUES ('Campus Sorocaba', 1, NULL, 'Rod. João Leme dos Santos km 110 - SP-264 Bairro do Itinga - Sorocaba'); 
INSERT INTO campus (nome, reitoria_id, localizacao, endereco) VALUES ('Campus Lagoa do Sino', 1, NULL, 'Rod. Lauri Simões de Barros km 12 - SP-189 Bairro Aracaçu - Buri'); 

--- inserções pro_reitoria ---
INSERT INTO pro_reitoria(sigla_preitoria, reitoria_id, nome)
VALUES
('ProGrad', 1, 'Pró-Reitoria de Graduação'),
('ProPG', 1, 'Pró-Reitoria de Pós-Graduação'),
('ProPq', 1, 'Pró-Reitoria de Pesquisa'),
('ProEx', 1, 'Pró-Reitoria de Extensão'),
('ProGPe', 1, 'Pró-Reitoria de Gestão de Pessoas'),
('ProACE', 1, 'Pró-Reitoria de Assuntos Comunitários e Estudantis'),
('ProAd', 1, 'Pró-Reitoria de Administração');

--- inserções reitoria_professor ---
INSERT INTO reitoria_professor (prof_id, reitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, 1, '2020', '2024', 'Reitora' FROM professor WHERE nome='Ana Beatriz de Oliveira');

INSERT INTO reitoria_professor (prof_id, reitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, 1, '2021', '2025', 'Vice-Reitora' FROM professor WHERE nome='Maria de Jesus Dutra dos Reis');

--- inserção pro_reitoria_professor ---
INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitor de Graduação' FROM professor p, pro_reitoria pr WHERE p.nome='Daniel Rodrigo Leiva' AND pr.sigla_preitoria='ProGrad');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitora Adjunta de Graduação' FROM professor p, pro_reitoria pr WHERE p.nome='Luciana Cristina Salvatti Coutinho' AND pr.sigla_preitoria='ProGrad');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitor de Pesquisa' FROM professor p, pro_reitoria pr WHERE p.nome='Pedro Sergio Fadini' AND pr.sigla_preitoria='ProPq');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitora Adjunta de Pesquisa' FROM professor p, pro_reitoria pr WHERE p.nome='Diana Junkes Bueno Martha' AND pr.sigla_preitoria='ProPq');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitor de Pós-Graduação' FROM professor p, pro_reitoria pr WHERE p.nome='Rodrigo Constante Martins' AND pr.sigla_preitoria='ProPG');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitor Adjunto de Pós-Graduação' FROM professor p, pro_reitoria pr WHERE p.nome='Luiz Eduardo Moschini' AND pr.sigla_preitoria='ProPG');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, null, null, 'Pró-Reitora de Extensão' FROM professor p, pro_reitoria pr WHERE p.nome='Ducinei Garcia' AND pr.sigla_preitoria='ProEx');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2020', '2024', 'Pró-Reitor Adjunto de Extensão' FROM professor p, pro_reitoria pr WHERE p.nome='Fábio Gonçalves Pinto' AND pr.sigla_preitoria='ProEx');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2016', '2024', 'Pró-Reitora de Administração' FROM professor p, pro_reitoria pr WHERE p.nome='Edna Hércules Augusto' AND pr.sigla_preitoria='ProAd');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitor Adjunto de Administração' FROM professor p, pro_reitoria pr WHERE p.nome='Luiz Manoel Almeida' AND pr.sigla_preitoria='ProAd');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, null, null, 'Pró-Reitora Adjunta de Administração' FROM professor p, pro_reitoria pr WHERE p.nome='Izaura do Carmo Alcoforado' AND pr.sigla_preitoria='ProAd');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitora de Gestão de Pessoas' FROM professor p, pro_reitoria pr WHERE p.nome='Jeanne Liliane Marlene Michel' AND pr.sigla_preitoria='ProGPe');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, null, null, 'Pró-Reitor Adjunto de Gestão de Pessoas' FROM professor p, pro_reitoria pr WHERE p.nome='Antônio Roberto de Carvalho' AND pr.sigla_preitoria='ProGPe');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, '2021', '2025', 'Pró-Reitor de Assuntos Comunitários e Estudantis' FROM professor p, pro_reitoria pr WHERE p.nome='Djalma Ribeiro Júnior' AND pr.sigla_preitoria='ProACE');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, ano_inicio, ano_termino, cargo)
(SELECT prof_id, preitoria_id, null, null, 'Pró-Reitora Adjunta de Assuntos Comunitários e Estudantis' FROM professor p, pro_reitoria pr WHERE p.nome='Gisele Aparecida Zutin Castelani' AND pr.sigla_preitoria='ProACE');


--- inserções centro ---
INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone) 
VALUES ('CCET', 1, 'Centro de Ciências Exatas e de Tecnologia', NULL, '16 3351-8201'),
('CCBS', 1, 'Centro de Ciências Biológicas e da Saúde', NULL, '16 3351-8301'),
('CECH', 1, 'Centro de Educação e Ciências Humanas', NULL, '16 3351-8351'),
('CCGT', 1, 'Centro de Ciências em Gestão e Tecnologia', NULL, '15 3229-7546'),
('CCHB', 1, 'Centro de Ciências Humanas e Biológicas', NULL, '15 3229-7470'),
('CCTS', 1, 'Centro de Ciências e Tecnologias para Sustentabilidade', NULL, '15 3329-5937'),
('CCA', 1, 'Centro de Ciências Agrárias', NULL, '19 3543-2600'),
('CCN', 1, 'Centro de Ciências da Natureza', NULL, NULL);

--- inserções centro_professor ---
INSERT INTO centro_professor (prof_id, centro_id, ano_inicio, ano_termino, cargo)
VALUES ('18', '2', '8/10/2018 – atual', 'diretor'), ('19', '2', '8/10/2018 – atual', 'vice-diretor'),
('20', '1', NULL, 'diretor'), ('21', '1', NULL, 'vice-diretor'), 
('22', '4', '2018-2022', 'diretor'), ('23', '4', '2018-2022', 'vice-diretor'), 
('24', '5', '2022-2026', 'diretor'), ('25', '5', '2022-2026', 'vice-diretor'), 
('26', '6', NULL, 'diretor'), ('27', '6', NULL, 'vice-diretor'), 
('28', '3', '2020-2024', 'diretor'), ('29', '3', '2020-2024', 'vice-diretor'), 
('30', '7', NULL, 'diretor'), ('31', '7', NULL, 'vice-diretor'), 
('32', '8', NULL, 'diretor'), ('33', '8', NULL, 'vice-diretor');

--- inserções departamento ---
INSERT INTO departamento (dept_sigla, centro_id, nome, localizacao, site, telefone, email) VALUES

    --- CCA ---
    ('DDR', (SELECT centro_id FROM centro WHERE sigla_centro='CCA'), 'Departamento de Desenvolvimento Rural', NULL, NULL, NULL, NULL),
    ('DBPVA', (SELECT centro_id FROM centro WHERE sigla_centro='CCA'), 'Departamento dE Biotecnologia e Produção Vegetal e Animal', NULL, NULL, NULL, NULL),
    ('DCNME', (SELECT centro_id FROM centro WHERE sigla_centro='CCA'), 'Departamento de Ciências da Natureza, Matemática e Educação', NULL, NULL, NULL, NULL),
    ('DRNPA', (SELECT centro_id FROM centro WHERE sigla_centro='CCA'), 'Departamento de Recursos Naturais e Proteção Ambiental', NULL, NULL, NULL, NULL),
    ('DTAiSER', (SELECT centro_id FROM centro WHERE sigla_centro='CCA'), 'Departamento de Tecnologia Agroindustrial e Socioeconomia Rural', NULL, NULL, NULL, NULL),
    
    --- CCBS ---
    ('DB', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Botânica', NULL, 'www.db.ufscar.br', '(16) 3351 8308', 'db@ufscar.br'),
    ('DCAm', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Ciências Ambientais', NULL, 'www.dcam.ufscar.br', '(16) 3351-9776', 'dcam@ufscar.br'),
    ('DCF', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Ciências Fisiológicas', NULL, 'www.dcf.ufscar.br/pt-br', '(16) 3351-8327', 'dcf@ufscar.br'),
    ('DEBE', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Ecologia e Biologia Evolutiva', NULL, NULL, '(16) 3351-8322', 'secdebe@ufscar.br'),
    ('DEFMH', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Educação Físcia e Motricidade Humana', NULL, 'www.educacaofisica.ufscar.br/', '(16) 3351-8294', 'ccef@ufscar.br'),
    ('DEnf', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Enfermagem', NULL, 'www.denf.ufscar.br', '(16) 3351-8334', 'denf@ufscar.br'),
    ('DFisio', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Fisioterapia', NULL, 'www.dfisio.ufscar.br', '(16) 3351-8341', 'dfisio@ufscar.br'),
    ('DGE', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Genética e Evolução', NULL, 'www.dge.ufscar.br', '(16) 3351-8377', 'dge@ufscar.br'),
    ('DGero', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Gerontologia', NULL, 'www.gerontologia.ufscar.br', '(16) 3306-6675', 'gerontologia@ufscar.br'),
    ('DHb', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Hidrobiologia', NULL, 'www.dhb.ufscar.br', '(16) 3351-8310', 'secdhb@ufscar.br'),
    ('DMed', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Medicina', NULL, 'www.dmed.ufscar.br', '(16) 3351-8340', 'dmed@ufscar.br'),
    ('DMP', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Morfologia e Patologia', NULL, 'www.dmp.ufscar.br', '(16) 3351-8325', 'dmed@ufscar.br'),
    ('DTO', (SELECT centro_id FROM centro WHERE sigla_centro='CCBS'), 'Departamento de Terapia Ocupacional', NULL, 'www.dto.ufscar.br', '(16) 3351-8342', 'secdto@ufscar.br');
    
    --- CCET ---
    
    --- CCGT ---
    
    --- CCHB ---
    
    --- CCTS ---
    
    --- CECH ---
    
   

--- inserções area --- ordem: esporte -> lazer -> reserva_natural
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Ginásio de Esportes'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Campo de Futebol'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, 'Campo de Futebol 01'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, 'Campo de Futebol 02'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, 'Quadra Esportiva'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (3, NULL, 'Quadra Esportiva'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Piscina Semi-Olímpica'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Piscina Aprendizagem'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Espaço de Convivência Área Sul'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Teatro de Bolso'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Quiosque Área Sul'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Quiosque I - Área Norte'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Quiosque II - Área Norte'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Sala de Ensaio da Orquestra'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Espaço Cultural');
INSERT INTO area (campus_id, localizacao, nome) VALUES (3, NULL, 'Quiosque 1'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (3, NULL, 'Quiosque 2'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (3, NULL, 'Praça'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Bosque de Pinus da UFSCar'); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, 'Represa do Rio Monjolinho'); 

--- inserções esporte ---
INSERT INTO esporte (area_id, esporte_praticado) 
(SELECT area_id, 'Futsal, Ginástica, Vôlei, Basquete' FROM area a WHERE a.nome = 'Ginásio de Esportes'); 

INSERT INTO esporte (area_id, esporte_praticado) 
(SELECT area_id, 'Futebol' FROM area a WHERE a.nome = 'Campo de Futebol'); 

INSERT INTO esporte (area_id, esporte_praticado) 
(SELECT area_id, 'Natação' FROM area a WHERE a.nome = 'Piscina Semi-Olímpica' AND a.campus_id = 1);

INSERT INTO esporte (area_id, esporte_praticado) 
(SELECT area_id, 'Natação' FROM area a WHERE a.nome = 'Piscina Aprendizagem' AND a.campus_id = 1); 

INSERT INTO esporte (area_id, esporte_praticado) 
(SELECT area_id, 'Futebol' FROM area a WHERE a.nome = 'Campo de Futebol 01' AND a.campus_id = 2); 

INSERT INTO esporte (area_id, esporte_praticado) 
(SELECT area_id, 'Futebol' FROM area a WHERE a.nome = 'Campo de Futebol 02' AND a.campus_id = 2); 

INSERT INTO esporte (area_id, esporte_praticado) 
(SELECT area_id, 'Futebol, Vôlei, Basquete' FROM area a WHERE a.nome = 'Quadra Esportiva' AND a.campus_id = 2); 

INSERT INTO esporte (area_id, esporte_praticado) 
(SELECT area_id, 'Futebol, Vôlei, Basquete' FROM area a WHERE a.nome = 'Quadra Esportiva' AND a.campus_id = 3);

--- inserções lazer ---
INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Piscina Semi-Olímpica' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Piscina Aprendizagem' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Espaço de Convivência Área Sul' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Teatro de Bolso' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Quiosque Área Sul' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Quiosque I - Área Norte' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Quiosque II - Área Norte' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Sala de Ensaio da Orquestra' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Espaço Cultural' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Quiosque 1' AND a.campus_id = 3); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Quiosque 2' AND a.campus_id = 3); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Praça' AND a.campus_id = 3);

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Ginásio de Esportes' AND a.campus_id = 1); 

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Campo de Futebol' AND a.campus_id = 1);

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Campo de Futebol 01' AND a.campus_id = 2);

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Campo de Futebol 02' AND a.campus_id = 2);

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Quadra Esportiva' AND a.campus_id = 2);

INSERT INTO lazer (area_id, capacidade) 
(SELECT area_id, NULL FROM area a WHERE a.nome = 'Quadra Esportiva' AND a.campus_id = 3);

--- inserções reserva_natural ---
INSERT INTO reserva_natural (area_id, bioma) 
(SELECT area_id, 'Mata Atlântica' FROM area a WHERE a.nome = 'Bosque de Pinus da UFSCar' AND a.campus_id = 1); 

INSERT INTO reserva_natural (area_id, bioma) 
(SELECT area_id, 'Mata Atlântica' FROM area a WHERE a.nome = 'Represa do Rio Monjolinho' AND a.campus_id = 1); 

--- inserções construcao ---
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Biblioteca Comunitária / Teatro Florestan Fernandes');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Atendimento à Criança');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Atendimento à Criança - Ampliação');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Atendimento à Criança - Quadra');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Sanitários AT03');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Salas de Estudo em Grupo e Laboratório de Informática');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Simulação de Práticas Profissionais da Saúde');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Reservatório Área Sul');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Reservatório Área Norte');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Reservatório Área Norte');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Reservatório de Água - Área Norte (em frente ao Lamav)');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Central de Serviços Terceirizados');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Central de Serviços Terceirizados');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Central de Resíduos - Amplicação');
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Central de Resíduos - Depósito de Produtos Químicos');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Central de Resíduos - Depósito de Produtos Radioativos');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Central de Resíduos - Depósito de Material Reciclável');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Central de Resíduos - Administração');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Central de Resíduos - Depósito de Combustíveis'); 
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Casa de Máquinas / Piscina');
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Cabine de Elétrica (AEN)');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Pórtico de Acesso Washington Luís - Área Sul');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Pórtico de Acesso Norte - Área Norte');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Pórtico de Acesso Leste - Babilônia');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Anexo do Departamento de Morfologia e Patologia'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Anexo I – Departamento de Ecologia e Biologia Evolutiva'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Anexo II – Departamento de Ecologia e Biologia Evolutiva'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Anexo III – Departamento de Ecologia e Biologia Evolutiva'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Anexo I – Departamento de Hidrobiologia'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Anexo II – Departamento de Hidrobiologia'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Arquivo de História Contemporânea');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Pesquisa e Documentação');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Coordenações de Cursos');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'SINTUFSCar');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Pavilhão de Acesso SINTUFSCar');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Programa de Pós-Graduação em Educação Especial');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Passarela Coberta entre A6 e A7');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Sanitário Público');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Alojamento - Módulo III');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Alojamento - Módulo IV');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Alojamento - Módulo V');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Alojamento - Módulo VI');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Alojamento - Módulo VII');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Alojamento - Módulo VIII');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Alojamento - Módulo XV');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Conjunto de Salas de Aula Sul - Babilônia');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Conjunto de Salas de Aula Sul - Babilônia II');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'ADUFSCar');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Vestiário do Pavilhão de Ginástica / Laboratório Didático de Condicionamento Físico');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Pavilhão de Ginástica');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Secretaria de Informática');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Anfiteatro Área Norte – Bento Prado');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Sala de Apoio do Anfiteatro Área Norte – Bento Prado');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Vigilância - Guarita (Transfederônica)');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Universidade Aberta do Brasil');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Gabinete de Docentes e Laboratórios');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Diretoria do Centro de Ciências Exatas e Tecnológicas');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Passarela');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Circulação DEP/DEQ'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Passarelas DEQ'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Passarela 1 e Sanitários');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Passarela 2 e Sanitários');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'LIvraria da EdUFSCar');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Passarela');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Passarela e Sanitários');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Estação Climatológica');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Banco do Brasil');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Caixa Eletrônico do Banco Santander (Área Sul)');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Banco Santander (Área Norte)');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Estação de Psicultura - DHB');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Anexo de Estação de Psicultura - DHB');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Programa de Pós-Graduação em Química');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Auditório do Programa de Pós-Graduação em Química');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Programa de Pós-Graduação em Engenharia Civil');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'UAB');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Oficina Mecânica'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edifício da ALCOA'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edífico de Aulas Teóricas 4');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edifício de Aulas Teóricas 10');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edíficio de Aulas Teóricas 5');
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edifício de Aulas Teóricas 6');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edifício de Aulas Teóricas 7');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edifício de Aulas Teóricas 8');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edifício de Salas de Aulas Teóricas 9');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Garagem (FAI)');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Centro de Reprodução Gráfica');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Extensão - UFSCar/ESCOLA');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Extensão (1) - Saúde');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Extensão (2) - Empresa');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Extensão (3) - Cidadania');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Extensão (4) - INCOOP');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Extensão (5) - Sala de Múltiplo Uso');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Oficina do Baja'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Saúde Escola Bloco 1 - Pólo de Capacitação Bloco 2 - Consultas');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Saúde Escola Bloco 3 - Unidade Apoio Programas Bloco 4 - Fisioterapia');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Saúde Escola Bloco 5 - Administração Bloco 6 - Oficinas');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Saúde Escola Bloco 7 - Serviços Bloco 8 - Atendimentos à Criança / UENAPES');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Saúde Escola - Passarela');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo Multidisciplinar Integrado de Estudos, Formação e Intervenção em Economia Solidária - NuMI-EcoSol Antiga Incubadora Regional de Cooperativas Populares - INCOOP');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Rádio e TV / Coordenadoria de Comunicação Social');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Formação de Professores – Blocos A e C');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Fundação de Apoio Institucional');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Vivência Estudantil');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Vivência AEN');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Unidade de Simulação de Práticas Profissionais da Saúde');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'NUULEN');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Edifício Petrobrás');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Núcleo de Apoio à Pesquisa');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'INCT-HYMPAR');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Complexo de Laboratórios Multidisciplinares de Estudos Estratégicos e Avançados');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Centro de Inferência Aplicada – Departamento de Estatística'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL,'Fundação de Apoio Institucional – Etapa 2');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Departamento de Estatística - Anexo'); /*FLAG DEPT*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'NET-PRE Anexo');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Central de GLP e Núcleo de Serviço'); /*FLAG DEPT -> DEQ*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Central de Gás Liquefeito de Petróleo'); /*FLAG DEPT -> DEMa*/   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Núcleos de Serviços'); /*FLAG DEPT -> DQ*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Depósitos de Produtos Químicos 01'); /*não tinha o número*/ /*FLAG DEPT -> DQ*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Depósito de Produtos Químicos 02'); /*não tinha o número*/ /*FLAG DEPT -> DQ*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Auditório do Departamento de Educação Especial (REUNI – Etapa 3)'); /*não tinha o número*/ /*FLAG DEPT -> não sei se é flag mesmo*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'ADUFSCar');  

/*A PARTIR DAQUI É REFERENTE AO CAMPUS ARARAS - 2*/   

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Vestiário do Campo 01');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Vestiário do Campo 02');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Aula 01'); /*era só sala de aula*/   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Aula 02'); /*era só sala de aula*/   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Aula Microscopia 01'); /*era só sala de aula microscopia */   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Aula Microscopia 02'); /*era só sala de aula microscopia */   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Uso Residencial - Caseiro');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Grupo de Pesquisa e Trabalhos Agropecuários');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Grupo de Pesquisa e Trabalhos Agropecuários - Apoio');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Docentes 01'); /* era só sala de docentes */   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Docentes 02'); /* era só sala de docentes */   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Docentes 03'); /* era só sala de docentes */   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Docentes 04'); /* era só sala de docentes */   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Docentes 05'); /* era só sala de docentes */   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Sala de Docentes 06'); /* era só sala de docentes */   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Casa da Colônia - Uso dos Professores');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Casa da Colônia - Uso do Caseiro');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Casa da Colônia - Identificar Uso 01'); /*era só casa de colônia - identificar uso*/   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Casa da Colônia - Identificar Uso 02'); /*era só casa de colônia - identificar uso*/   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Casa da Colônia - Identificar Uso 03'); /*era só casa de colônia - identificar uso*/   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Casa da Colônia - Uso dos Funcionários da FAI');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Biblioteca Central');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Anexo - Biblioteca Central');    
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Ambulatório - A Construir');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Salas de Professores');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Auditório');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Portaria 01');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Portaria 02');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Balança');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL,'Edifício PMGCA');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Galpão de Máquinas da LaGEM');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Oficina Mecânica da LaGEM');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Biblioteca Setorial do Prédio Central - Edifício Gilberto Miller Azzi');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Coordenação do Curso de Biotecnologia - Edifício Gilberto Miller Azzi');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Coordenação do Curso de Engenharia Agronômica - Edifício Gilberto Miller Azzi');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Auditório - Edifício Gilberto Miller Azzi');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Salas de Aulas e Laboratórios de Informática');  

/*A PARTIR DAQUI É REFERENTE AO CAMPUS SOROCABA - 3*/   

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Área de Vivência');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Ampliação da Área de Vivência');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Aulas Teóricas AT02');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Ampliação Aulas Teóricas AT02');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Biblioteca');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Vestiários da Quadra');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Sala de Docentes');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Oficina de Ensino');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'NETC (Térreo)');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Edifício de Aulas Teóricas e Laboratórios');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Cabine AT LAB');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Ambulatório');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Ampliação Ambulatório');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Salas de Aulas AT01');    
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Ampliação Salas de Aulas AT01');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Passarela e Implantar');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Salas de Professores');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Sindicato'); INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Creche');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL,'Serviços de Apoio');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Agência Bancária');   

/*A PARTIR DAQUI É REFERENTE AO CAMPUS LAGOA DO SINO - 4*/   

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Bloco 02 – Docentes');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Bloco 03 – Salas de Aulas Teóricas 01 (AT1)');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Salas de Aulas Teóricas 02 (AT2) (antiga garagem de máquinas agrícolas)');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Serviço Terceirizado de Fotocopia (antigo posto)');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Ciclo Básico');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Bloco 01 - Laboratórios');  

/* LOCAIS QUE NAO SE ENCAIXAM LAGOA DO SINO*/   

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Silo Alvenaria Desativado');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Silo Metálico a');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Silo Metálico b');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Silo Metálico c');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Silo Metálico d');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Curral 01'); /*era só curral*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Curral 02'); /*era só curral*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Curral 03'); /*era só curral*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Igreja');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa 01'); /*era só casa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa 02'); /*era só casa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa 03'); /*era só casa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa 04'); /*era só casa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa 05'); /*era só casa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa 06'); /*era só casa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa 07'); /*era só casa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa 08'); /*era só casa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa de Bomba para Irrigação 01'); /* era só casa de bomba para irrigação*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa de Bomba para Irrigação 02'); /* era só casa de bomba para irrigação*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL,'Casa de Bomba para Irrigação 03'); /* era só casa de bomba para irrigação*/  

/*INSERÇÕES CONSTRUÇÃO -> PARTE DO ADMINISTRATIVO*/  

/*A PARTIR DAQUI É REFERENTE AO CAMPUS SÃO CARLOS - 1*/  

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Seção Administrativa Edifícios / Manutenção');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Seção de Urbanização (Garagem para Máquinas)');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Seção de Transportes');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Seção de Vigilância');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Seção de Móveis e Utensílios');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Seção de Pintura - PU');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Sala de Manutenção - PU');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Observatório');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Ambulatório AEN');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Desocupado Antiga Clínica de Fisioterapia');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Desocupado Antigo Laboratório de Neurociências');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Diretoria do Centro de Ciências Humanas');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Portal dos Professores / NEAB E NIASI');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Centrinho Desocupado DEnf');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Procuradoria Jurídica');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Escritório de Desenvolvimento Físico');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Prefeitura Universitária');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'PU - EDF - Ampliação');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Guarita Prefeitura Universitária');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Depósito Prefeitura Universitária');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Manutenção Elétrica - PU');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Oficina Mecânica / Eletrônica');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Cabine de Energia - SIn');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Casa de Máquinas - RU');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Casa de Compressores 01'); /*era só casa de compressores (CCET DQ)*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Casa de Compressores 02'); /*era só casa de compressores (CCET DQ)*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Coordenadoria Especial do Meio Ambiente');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Divisão de Informática e Controle Acadêmico');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Editora EdUFSCar');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Edifício Anexo à Reitoria');   

/*A PARTIR DAQUI É REFERENTE AO CAMPUS ARARAS - 2*/   

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Diretoria Fundação de Apoio Institucional Administração Laboratórios Psicólogo Assistente Social');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Seção de Transportes / Garagem de Veículos e de Máquinas');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa de Vidro');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa de Madeira');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 01'); /*era só estufa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 02'); /*era só estufa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 03'); /*era só estufa*/   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 04'); /*era só estufa*/   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 05'); /*era só estufa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 06'); /*era só estufa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 07'); /*era só estufa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 08'); /*era só estufa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Estufa 09'); /*era só estufa*/  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Posto Meteorológico');   

/*A PARTIR DAQUI É REFERENTE AO CAMPUS SOROCABA - 3*/  

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Cabine de Energia');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Cabine de Comunicação');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Gestão Acadêmica');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Gestão Administrativa');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Guarita');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Pórtico (Cobertura)');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Ampliação da Cozinha do RU');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Poço Artesiano SAAE');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Reservatório de Água');   

/*A PARTIR DAQUI É REFERENTE AO CAMPUS LAGOA DO SINO - 4*/   

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Bloco 04 - Administração Central');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Guarita Armazém');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Armazém de Grãos');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Mina de Água');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Caixa de Água');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Reservatório Metálico de Água');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Garagem de Máquinas Agrícolas');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Abrigo de Gás');   
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Casa de força (desativada)');  

/*INSERÇÕES CONSTRUÇÃO -> PARTE DA ALIMENTACAO*/  

/*A PARTIR DAQUI É REFERENTE AO CAMPUS SÃO CARLOS*/  

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Restaurante Universitário - RU');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 1, NULL, NULL, 'Ampliação do Restaurante Universitário');  

/*A PARTIR DAQUI É REFERENTE AO CAMPUS ARARAS*/  

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Lanchonete');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Cantina');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 2, NULL, NULL, 'Restaurante Universitário');  

/*A PARTIR DAQUI É REFERENTE AO CAMPUS SOROCABA*/  

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Restaurante Universitário');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Ampliação do Refeitório do RU');  
INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 3, NULL, NULL, 'Restaurante 2');  

 /*A PARTIR DAQUI É REFERENTE AO CAMPUS LAGOA DO SINO - 4*/  

INSERT INTO construcao (campus_id, dept_id, localizacao, nome) (SELECT 4, NULL, NULL, 'Bloco 01 - Refeitório'); 


--- inserções laboratorio ---
INSERT INTO laboratorio (nome, sigla)
VALUES
--Centro de Ciências Biológicas e da Saúde
--  Departamento de Educação Física e Motricidade Humana
('Biomecânica do Movimento Humano', NULL),
('Laboratório de Comportamento Motor', 'Dinâmica'),
('Laboratório de Inovação e Empreendedorismo em Tecnologia Assistiva, Esporte e Saúde', 'LIETEC'),
('Laboratório de Adaptações Neuromusculares', 'MUSCULAB'),
('Núcleo de Estudos em Atividade Física Adaptada', 'NEAFA'),
('Grupo de Estudos e Pesquisas dos Aspectos Pedagógicos e Sociais do Futebol', 'PROFUT'),
--  Departamento de Fisioterapia
('Laboratório de Análise da Função Articular', 'LAFAr'),
('Laboratório de Análise do Desenvolvimento Infantil', 'LADI'),
('Laboratório de Avaliação do Desenvolvimento Funcional', 'LADeF'),
('Laboratório de Avaliação e Intervenção do Complexo do Ombro', NULL),
('Laboratório de Avaliação e Intervenção em Ortopedia e Traumatologia', 'LAIOT'),
('Laboratório de Cinesiologia Clínica e Ocupacional', 'LACO'),
('Laboratório de Dinamometria Isocinética', NULL),
('Laboratório de Espirometria e Fisioterapia Respiratória', 'LEFiR'),
('Laboratório de Estudos em Epidemiologia e Envelhecimento', 'LEPEN'),
('Laboratório de Fisioterapia Preventiva e Ergonomia', 'LAFIPE'),
('Laboratório de Neurociências', NULL),
('Laboratório de Pesquisa em Fisioterapia Neurológica', 'LaFiN'),
('Laboratório de Pesquisa em Recursos Fisioterapêuticos', NULL),
('Laboratório de Pesquisa em Reumatologia e Reabilitação da Mão', 'LAPREM'),
('Laboratório de Pesquisa em Saúde da Mulher', 'LAMU'),
('Laboratório de Plasticidade Muscular', NULL),
('Laboratório Multidisciplinar de Pesquisa em Saúde do Idoso', 'LaPeSI'),
('Núcleo de Pesquisas em Exercício Físico', 'NUPEF'),
('Laboratório de Fisioterapia Cardiovascular', 'LFCV'),
('Laboratório de Fisioterapia Cardiopulmonar', 'LACAP'),
('Núcleo Multidisciplinar de Análise do Movimento', 'NAM'),
--  Departamento de Terapia Ocupacional
('Laboratório Atividades Humanas e Terapia Ocupacional', 'AHTO'),
('Laboratório de Análise Funcional e Ajudas Técnicas', 'LAFATec'),
('Laboratório de Atividade e Desenvolvimento', 'LAD'),
('Laboratório de Terapia Ocupacional e Saúde Mental', 'LaFollia'),
('Laboratório Metuia', NULL),
--  Departamento de Enfermagem
('Laboratório de Estudos e Pesquisa sobre Cuidado Interdisciplinar à Saúde da Mulher', NULL),
('Laboratório de Estudos e Pesquisa sobre Organização Hospitalar e Cuidados', 'GEPOHC'),
('Laboratório de Estudos e Pesquisa sobre Políticas e Práticas em Saúde', NULL),
('Laboratório de Estudos e Pesquisa sobre Sistematização de Assistência em Enfermagem', NULL),
--  Departamento de Morfologia e Patologia
('Laboratório de Ensino de Anatomia', NULL),
('Laboratório de Inflamação e Doenças Infecciosas', 'LIDI'),
('Laboratório de Microbiologia e Biomoléculas', 'LaMiB'),
('Laboratório de Patologia e Biocompatibilidade', 'LPB'),
('Laboratório de Microbiologia e Parasitologia', 'LMP'),
--  Departamento de Ecologia e Biologia Evolutiva
('Laboratório de Estudos de Hymenoptera Parasitoides', NULL),
('Laboratório de Estudos Subterrâneos', NULL),
('Laboratório de Ictiologia Sistemática', NULL),
('Laboratório de Limnologia', NULL),
('Laboratório de Microbiologia Laboratório de Paleontologia', NULL),
('Laboratório de Zoologia', NULL),
--  Departamento de Hidrobiologia
('Estação Experimental de Aquicultura', NULL),
('Laboratório de Análises Químicas', NULL),
('Laboratório de Biodiversidade e Processos Microbianos', NULL),
('Laboratório de Dinâmica de Populações de Peixes / Histologia', NULL),
('Laboratório de Plâncton', NULL),
('Laboratório de Bioensaios e Modelagem Matemática', NULL),
('Laboratório de Macroinvertebrados Aquáticos', NULL),
('Laboratório de Ecologia da Conservação', NULL),
('Laboratório de Análise e Planejamento Ambiental', NULL),
('Laboratório de Estudos sobre Sistemas Complexos Ambientais', NULL),
('Laboratório de Estudos Ecológicos em Etologia e Evolução', NULL),
--  Departamento de Genética e Evolução
('Laboratório de Bioquímica e Biologia Molecular Aplicada', NULL),
('Laboratório de Biologia Molecular', NULL),
('Laboratório de Biotecnologia Vegetal', NULL),
('Laboratório de Citogenética de Peixes', 'LCP'),
('Laboratório de Biodiversidade Molecular e Conservação', 'LabBMC'),
('Laboratório de Genética de Populações e Evolução', NULL),
('Laboratório de Genética de Aves', NULL),
('Laboratório de Genética Evolutiva de Himenópteros', NULL),
('Laboratório de Bioquímica e Genética Aplicada', 'LBGA'),
('Laboratório de Genética e Biotecnologia', NULL),
('Laboratório de Imunologia Aplicada', 'LIA'),
('Laboratório de Genética de Comportamento', NULL),
('Laboratório de Genética de Sistemas', NULL),
('Laboratório de Bioquímica e Biofísica Molecular', NULL),
--  Departamento de Ciências Fisiológicas
('Laboratório de Fisiologia do Exercício', NULL),
('Laboratório de Fisiologia e Biofísica Muscular', NULL),
('Laboratório de Zoofisiologia e Bioquímica Comparativa', 'LZBC'),
('Laboratório de Biologia Experimental', NULL),
('Laboratório de Farmacologia Cardiovascular', 'LFCV'),
('Laboratório de Bioquímica e Biologia Molecular', NULL),
('Laboratório de Fisiologia Endócrina e Exercício Físico', 'LAFEEx'),
--  Departamento de Ciências Ambientais
('Laboratório de Geotecnologias e Conservação Ambiental', NULL),
('Laboratório de Ecologia Aplicada', NULL),
('Laboratório de Análise e Planejamento', NULL),
('Laboratório de Educação Ambiental', NULL),
('Laboratório de Estudos da Fauna', NULL),
('Centro de Estudos em Democracia Ambiental', 'CEDA'),
--Centro de Ciências Exatas e de Tecnologia
--  Departamento de Computação (DC),
('Laboratório de Algoritmos, Otimização e Combinatória', 'ALOC'),
('Above Cloud Computing', 'ASGARD'),
('Advanced Research in Software Engineering', 'AdvanSE'),
('Biomedical Image Processing Group', 'BIPG'),
('Bioinformatics and Machine Learning Group', 'BIOMaL'),
('Computational Intelligence Group', 'CIG'),
('Grupo de Sistemas Distribuídos e Redes', 'GSDR'),
('Image and Network Analysis Group', 'INAG'),
('Laboratório de Linguística e Inteligência Computacional', 'LALIC'),
('Laboratory of Autonomous Robots and Intelligent Systems', 'LARIS'),
('Laboratório de Banco de Dados', 'LBD'),
('Laboratório de Interação Flexível e Sustentável', 'LIFeS'),
('Laboratório de Sistemas Computacionais', 'LSC'),
('Laboratory for Innovation on Computing and Engineering', 'Lince'),
('Mineração de Dados e Aplicações', 'MIDAS'),
--  Departamento de Engenharia Civil (DECiv),
('Laboratório de Sistemas Estruturais', NULL),
('Laboratório de Geociências', NULL),
('Laboratório de Hidráulica', NULL),
('Laboratório de Saneamento', NULL),
('Laboratório de Materiais e Componentes da Construção Civil', NULL),
('Laboratório Integrado de Geotecnia, Topologia e Estradas', NULL),
('Núcleo de Estudos de Pré-Fabricados', 'NETPRE'),
--  Departamento de Engenharia de Materiais (DEMa),
('Laboratório de Solidificação', NULL),
('Laboratório de Fundição', NULL),
('Laboratório de Eletroquímica Aplicada', 'LElA'),
('Laboratório de Atomização e Revestimento', NULL),
('Laboratório Alcoa', NULL),
('Laboratório de Materiais Bioativos', 'LMBio'),
('Laboratório de Análises Térmicas e Termogravimétricas', 'LATTE'),
('Laboratório de Processamento de Materiais por Laser', 'LMP'),
('Laboratório de Metais Amorfos e Nanocristalinos', 'LabNano'),
('Centro de Caracterização e Desenvolvimento de Materiais', 'CCDM'),
('Laboratório de Ensaios Mecânicos', NULL),
('Laboratório de Simulação Computacional', 'LSC'),
('Laboratório de Permeação e Sorção de Gases', NULL),
('Laboratório de FTIR/UV/Vis e Permeação', NULL),
('Laboratório de Corrosão Munir Rachid', 'LC'),
('Processamento de Materiais via Aquecimento Fotônico: Laser & micro-ondas', 'ProMAF'),
('Laboratório de Materiais Vítreos', 'LaMaV'),
('Laboratório de Reologia', NULL),
('Microestrutura e Propriedades em Processos de Solidificação', 'M2PS'),
('Laboratório de Polímeros - G5', NULL),
('Laboratório de Microscopia Ótica', NULL),
('Laboratório de Hidrogênio em Metais', 'LH2M'),
('Laboratório de Caracterização Estrutural', 'LCE'),
--  Departamento de Engenharia de Produção (DEP),
--    - Site offline
--    - Dados retirados do cache do Google
('Laboratório de Engenharia de Produção', 'LEP'),
('Laboratório Integrado de Engenharia de Produção', 'LIEP'),
('Laboratório de Trabalho em Grupo', 'LTG'),
('Laboratório de Instrumentação', 'Lin'),
('Laboratório de Práticas Produtivas', 'LPP'),
('Laboratório de Protótipos', 'LP'),
('Laboratório de Ergonomia, Simulação e Projeto de Situações Produtivas', 'PSPLab'),
--  Departamento de Engenharia Elétrica (DEE),
--    - Não tem detalhamento de cada laboratório no site
--    - Dados retirados de: https://www.progpe.ufscar.br/arquivos/transparencia/laudos-insalubridade-e-periculosidade-e-ppra/laudo-ufscar-departamento-de-engenharia-eletrica-dee-1.pdf
('DEE - Laboratório A', NULL),
('DEE - Laboratório B', NULL),
('DEE - Laboratório C', NULL),
('DEE - Laboratório D', NULL),
('DEE - Laboratório E', NULL),
('DEE - Laboratório F', NULL),
--  Departamento de Engenharia Mecânica (DEMec),
('Laboratório de Engenharia Aplicada', 'LEA'),
('Laboratório de Mecânica Computacional', 'LMC'),
('Laboratório de Processos de Fabricação', 'LPF'),
('Laboratório de Projeto Integrado', 'LPI'),
('Laboratório de Ensino de Engenharias Elétrica e Mecânica', 'LEEM'),
--  Departamento de Engenharia Química (DEQ),
--    - Poucas informações disponíveis no site
--    - Laboratórios de outro departamento também estão incluidos no site da química (Física Experimental),
--    - Portanto, os dados foram coletados de: https://www.dq.ufscar.br/graduacao/bacharelado/projeto_bqbqt.pdf
('Laboratório de Química Analítica', NULL),
('Laboratório de Química Geral', NULL), -- NuLEEn
('Laboratório de Química Orgânica', NULL),
('Laboratório de Química Inorgânica', NULL),
('Laboratório de Físico-Química', NULL),
('Laboratório de informática', NULL),
--('Laboratório de Física Experimental A', NULL), -- Presente no site, mas não no Projeto Pedagógico
--('Laboratório de Física Experimental B', NULL), -- Presente no site, mas não no Projeto Pedagógico
('Laboratório Didático de Engenharia Química', NULL), -- Presente no site, mas não no Projeto Pedagógico
('Laboratório “Aberto” de Processos Químicos', NULL), -- Presente no site, mas não no Projeto Pedagógico
('Laboratório de Desenvolvimento de Processos Químicos', 'DPQ'), -- Presente no site, mas não no Projeto Pedagógico
('Laboratório de Automação e Controle de Processos Químicos', NULL), -- Presente no site, mas não no Projeto Pedagógico
--  Departamento de Estatística (DEs),
--    - Encontrados no site do Programa de Pós-Graduação: http://www.ppgest.ufscar.br/laboratorios.html
('Centro de Estudos do Risco', 'CER'),
('Centro de Inferência Aplicada', 'CINA'),
('Núcleo de Inferência Estatística', 'NINE'),
--  Departamento de Física (DF),
--    - Retirados do Projeto Pedagógico: https://www.prograd.ufscar.br/cursos/cursos-oferecidos-1/engenharia-fisica/engenharia-fisica-projeto-pedagogico.pdf
--    *
--    O curso de Bacharelado em Física utiliza a infraestrutura de laboratórios
--    didáticos do Departamento de Física, onde estão os Laboratórios de Física
--    Experimental C e D, de Física Moderna, de Eletrônica e Interfaceamento e de
--    Acústica. Os Laboratórios de Física Experimental A e B são parte da infraestrutura
--    do Núcleo de Laboratórios de Ensino de Engenharia (NuLEEn), – UFSCar. 
--    *
('Laboratório de Física Experimental A', NULL), -- NuLEEn
('Laboratório de Física Experimental B', NULL), -- NuLEEn
('Laboratório de Física Experimental C', NULL),
('Laboratório de Física Experimental D', NULL),
('Laboratório de Física Moderna', NULL),
('Laboratório de Eletrônica', NULL),
('Laboratório de Apoio ao Ensino de Física', NULL),
('Laboratório de Acústica Aplicada', NULL),
('Laboratório de Semicondutores', NULL),
('Laboratório de Correlação Angular', NULL),
('Laboratório de Cerâmicas Ferroelétricas', NULL),
('Laboratório de Metalurgia Física', NULL),
('Laboratório de Física Computacional', NULL),
('Laboratório de Supercondutividade e Magnetismo', NULL),
('Laboratório de Microscopia Eletrônica', NULL),
('Laboratório de Materiais e Dispositivos', NULL),
--  Departamento de Matemática (DM),
--  Departamento de Química (DQ),
('-Laboratório de Instrumentação para o Ensino de Química', NULL),
