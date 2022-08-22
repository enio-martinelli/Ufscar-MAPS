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

-- inserções laboratorio
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
