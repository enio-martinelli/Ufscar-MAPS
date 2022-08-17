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
('Gisele Aparecida Zutin Castelani', 'giseli@ufscar.br', 'Mestra');

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
INSERT INTO reitoria_professor (prof_id, reitoria_id, perIodo, cargo)
(SELECT prof_id, 1, '2020-Atual', 'Reitora' FROM professor WHERE nome='Ana Beatriz de Oliveira');

INSERT INTO reitoria_professor (prof_id, reitoria_id, perIodo, cargo)
(SELECT prof_id, 1, '2021-Atual', 'Vice-Reitora' FROM professor WHERE nome='Maria de Jesus Dutra dos Reis');

--- inserção pro_reitoria_professor ---
INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitor de Graduação' FROM professor p, pro_reitoria pr WHERE p.nome='Daniel Rodrigo Leiva' AND pr.sigla_preitoria='ProGrad');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitora Adjunta de Graduação' FROM professor p, pro_reitoria pr WHERE p.nome='Luciana Cristina Salvatti Coutinho' AND pr.sigla_preitoria='ProGrad');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitor de Pesquisa' FROM professor p, pro_reitoria pr WHERE p.nome='Pedro Sergio Fadini' AND pr.sigla_preitoria='ProPq');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitora Adjunta de Pesquisa' FROM professor p, pro_reitoria pr WHERE p.nome='Diana Junkes Bueno Martha' AND pr.sigla_preitoria='ProPq');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitor de Pós-Graduação' FROM professor p, pro_reitoria pr WHERE p.nome='Rodrigo Constante Martins' AND pr.sigla_preitoria='ProPG');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitor Adjunto de Pós-Graduação' FROM professor p, pro_reitoria pr WHERE p.nome='Luiz Eduardo Moschini' AND pr.sigla_preitoria='ProPG');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, null, 'Pró-Reitora de Extensão' FROM professor p, pro_reitoria pr WHERE p.nome='Ducinei Garcia' AND pr.sigla_preitoria='ProEx');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2020-Atual', 'Pró-Reitor Adjunto de Extensão' FROM professor p, pro_reitoria pr WHERE p.nome='Fábio Gonçalves Pinto' AND pr.sigla_preitoria='ProEx');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2016-Atual', 'Pró-Reitora de Administração' FROM professor p, pro_reitoria pr WHERE p.nome='Edna Hércules Augusto' AND pr.sigla_preitoria='ProAd');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitor Adjunto de Administração' FROM professor p, pro_reitoria pr WHERE p.nome='Luiz Manoel Almeida' AND pr.sigla_preitoria='ProAd');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, null, 'Pró-Reitora Adjunta de Administração' FROM professor p, pro_reitoria pr WHERE p.nome='Izaura do Carmo Alcoforado' AND pr.sigla_preitoria='ProAd');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitora de Gestão de Pessoas' FROM professor p, pro_reitoria pr WHERE p.nome='Jeanne Liliane Marlene Michel' AND pr.sigla_preitoria='ProGPe');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, null, 'Pró-Reitor Adjunto de Gestão de Pessoas' FROM professor p, pro_reitoria pr WHERE p.nome='Antônio Roberto de Carvalho' AND pr.sigla_preitoria='ProGPe');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, '2021-Atual', 'Pró-Reitor de Assuntos Comunitários e Estudantis' FROM professor p, pro_reitoria pr WHERE p.nome='Djalma Ribeiro Júnior' AND pr.sigla_preitoria='ProACE');

INSERT INTO pro_reitoria_professor (prof_id, preitoria_id, perIodo, cargo)
(SELECT prof_id, preitoria_id, null, 'Pró-Reitora Adjunta de Assuntos Comunitários e Estudantis' FROM professor p, pro_reitoria pr WHERE p.nome='Gisele Aparecida Zutin Castelani' AND pr.sigla_preitoria='ProACE');


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


--- inserções area --- ordem: esporte -> lazer -> reserva_natural
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Ginásio de Esportes’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Campo de Futebol’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, ‘Campo de Futebol 01’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, ‘Campo de Futebol 02’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, ‘Quadra Esportiva’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (3, NULL, ‘Quadra Esportiva’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Piscina Semi-Olímpica’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Piscina Aprendizagem’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Espaço de Convivência Área Sul’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Teatro de Bolso’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Quiosque Área Sul’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Quiosque I - Área Norte’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Quiosque II - Área Norte’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Sala de Ensaio da Orquestra’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Espaço Cultural’);
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, ‘Quiosque 1’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, ‘Quiosque 2’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (2, NULL, ‘Praça’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Bosque de Pinus da UFSCar’); 
INSERT INTO area (campus_id, localizacao, nome) VALUES (1, NULL, ‘Represa do Rio Monjolinho’); 

