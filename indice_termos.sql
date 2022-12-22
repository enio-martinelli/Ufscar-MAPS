CREATE TABLE IF NOT EXISTS indice_termos(
    coluna VARCHAR,
    tabela VARCHAR NOT NULL,
	termo VARCHAR NOT NULL,
	localizacao GEOMETRY

);

---inserção reitoria---
INSERT INTO indice_termos (coluna, tabela, termo, localizacao) VALUES 
			(NULL, 'reitoria', 'Reitoria', (SELECT localizacao FROM reitoria WHERE reitoria_id = 1));

---inserção pro_reitoria---
INSERT INTO indice_termos (coluna, tabela, termo, localizacao) VALUES
			('nome', 'pro_reitoria', 'Pró-Reitoria de Graduação', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 1)),
			('nome', 'pro_reitoria', 'Pró-Reitoria de Pós-Graduação', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 2)), 
			('nome', 'pro_reitoria', 'Pró-Reitoria de Pesquisa', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 3)),
			('nome', 'pro_reitoria', 'Pró-Reitoria de Extensão', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 4)),
			('nome', 'pro_reitoria', 'Pró-Reitoria de Gestão de Pessoas', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 5)),
			('nome', 'pro_reitoria', 'Pró-Reitoria de Assuntos Comunitários e Estudantis', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 6)),
			('nome', 'pro_reitoria', 'Pró-Reitoria de Administração', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 7)),
			
			('sigla_preitoria', 'pro_reitoria', 'ProGrad', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 1)),
			('sigla_preitoria', 'pro_reitoria', 'ProPG', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 2)),
			('sigla_preitoria', 'pro_reitoria', 'ProPq', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 3)),
			('sigla_preitoria', 'pro_reitoria', 'ProEx', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 4)),
			('sigla_preitoria', 'pro_reitoria', 'ProGPe', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 5)),
			('sigla_preitoria', 'pro_reitoria', 'ProACE', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 6)),
			('sigla_preitoria', 'pro_reitoria', 'ProAd', (SELECT localizacao FROM pro_reitoria WHERE preitoria_id = 7));

---inserção área---
INSERT into indice_termos(SELECT 'nome', 'area', 'Ginásio de Esportes');
INSERT into indice_termos(SELECT 'nome', 'area', 'Campo de Futebol');
INSERT into indice_termos(SELECT 'nome', 'area', 'Campo de Futebol 01');
INSERT into indice_termos(SELECT 'nome', 'area', 'Campo de Futebol 02');
INSERT into indice_termos(SELECT 'nome', 'area', 'Quadra Esportiva - Araras');
INSERT into indice_termos(SELECT 'nome', 'area', 'Quadra Esportiva - Sorocaba');
INSERT into indice_termos(SELECT 'nome', 'area', 'Piscina Semi-Olímpica');
INSERT into indice_termos(SELECT 'nome', 'area', 'Piscina Aprendizagem');
INSERT into indice_termos(SELECT 'nome', 'area', 'Espaço de Convivência Área Sul');
INSERT into indice_termos(SELECT 'nome', 'area', 'Teatro de Bolso');
INSERT into indice_termos(SELECT 'nome', 'area', 'Quiosque Área Sul');
INSERT into indice_termos(SELECT 'nome', 'area', 'Quiosque I - Área Norte');
INSERT into indice_termos(SELECT 'nome', 'area', 'Quiosque II - Área Norte');
INSERT into indice_termos(SELECT 'nome', 'area', 'Sala de Ensaio da Orquestra');
INSERT into indice_termos(SELECT 'nome', 'area', 'Espaço Cultural');
INSERT into indice_termos(SELECT 'nome', 'area', 'Quiosque 1');
INSERT into indice_termos(SELECT 'nome', 'area', 'Quiosque 2');
INSERT into indice_termos(SELECT 'nome', 'area', 'Praça');
INSERT into indice_termos(SELECT 'nome', 'area', 'Bosque de Pinus da UFSCar');
INSERT into indice_termos(SELECT 'nome', 'area', 'Represa do Rio Monjolinho');

---inserção departamento---
INSERT INTO indice_termos (coluna, tabela, termo, localizacao) VALUES
			('nome', 'departamento', 'Departamento de Desenvolvimento Rural', (SELECT localizacao FROM departamento WHERE dept_id = 1)),
			('nome', 'departamento', 'Departamento de Biotecnologia e Produção Vegetal e Animal', (SELECT localizacao FROM departamento WHERE dept_id = 2)),
			('nome', 'departamento', 'Departamento de Ciências da Natureza, Matemática e Educação',(SELECT localizacao FROM departamento WHERE dept_id = 3)),
			('nome', 'departamento', 'Departamento de Recursos Naturais e Proteção Ambiental', (SELECT localizacao FROM departamento WHERE dept_id = 4)),
			('nome', 'departamento', 'Departamento de Tecnologia Agroindustrial e Socioeconomia Rural', (SELECT localizacao FROM departamento WHERE dept_id = 5)),
			('nome', 'departamento', 'Departamento de Botânica', (SELECT localizacao FROM departamento WHERE dept_id = 6)),
			 
			('nome', 'departamento', 'Departamento de Ciências Ambientais', (SELECT localizacao FROM departamento WHERE dept_id = 7)),
			('nome', 'departamento', 'Departamento de Ciências Fisiológicas', (SELECT localizacao FROM departamento WHERE dept_id = 8)),
			('nome', 'departamento', 'Departamento de Ecologia e Biologia Evolutiva', (SELECT localizacao FROM departamento WHERE dept_id = 9)),
			('nome', 'departamento', 'Departamento de Educação Físcia e Motricidade Humana', (SELECT localizacao FROM departamento WHERE dept_id = 10)),
			('nome', 'departamento', 'Departamento de Enfermagem', (SELECT localizacao FROM departamento WHERE dept_id = 11)),
			('nome', 'departamento', 'Departamento de Fisioterapia', (SELECT localizacao FROM departamento WHERE dept_id = 12)),
			('nome', 'departamento', 'Departamento de Genética e Evolução', (SELECT localizacao FROM departamento WHERE dept_id = 13)),
			('nome', 'departamento', 'Departamento de Gerontologia', (SELECT localizacao FROM departamento WHERE dept_id = 14)),
			('nome', 'departamento', 'Departamento de Hidrobiologia', (SELECT localizacao FROM departamento WHERE dept_id = 15)),
			('nome', 'departamento', 'Departamento de Medicina', (SELECT localizacao FROM departamento WHERE dept_id = 16)),
			('nome', 'departamento', 'Departamento de Morfologia e Patologia', (SELECT localizacao FROM departamento WHERE dept_id = 17)),
			('nome', 'departamento', 'Departamento de Terapia Ocupacional', (SELECT localizacao FROM departamento WHERE dept_id = 18)),
			('nome', 'departamento', 'Departamento de Computação', (SELECT localizacao FROM departamento WHERE dept_id = 19)),
			('nome', 'departamento', 'Departamento de Engenharia Civil', (SELECT localizacao FROM departamento WHERE dept_id = 20)),
			('nome', 'departamento', 'Departamento de Engenharia Elétrica', (SELECT localizacao FROM departamento WHERE dept_id = 21)),
			('nome', 'departamento', 'Departamento de Engenharia Mecânica', (SELECT localizacao FROM departamento WHERE dept_id = 22)),
			('nome', 'departamento', 'Departamento de Engenharia de Materiais', (SELECT localizacao FROM departamento WHERE dept_id = 23)),
			('nome', 'departamento', 'Departamento de Engenharia de Produção', (SELECT localizacao FROM departamento WHERE dept_id = 24)),
			('nome', 'departamento', 'Departamento de Engenharia Química', (SELECT localizacao FROM departamento WHERE dept_id = 25)),
			('nome', 'departamento', 'Departamento de Estatística', (SELECT localizacao FROM departamento WHERE dept_id = 26)),
			('nome', 'departamento', 'Departamento de Física', (SELECT localizacao FROM departamento WHERE dept_id = 27)),
			('nome', 'departamento', 'Departamento de Matemática', (SELECT localizacao FROM departamento WHERE dept_id = 28)),
			('nome', 'departamento', 'Departamento de Química', (SELECT localizacao FROM departamento WHERE dept_id = 29)),
			('nome', 'departamento', 'Departamento de Administração', (SELECT localizacao FROM departamento WHERE dept_id = 30)),
			('nome', 'departamento', 'Departamento de Computação', (SELECT localizacao FROM departamento WHERE dept_id = 31)), --duplicado
			('nome', 'departamento', 'Departamento de Economia', (SELECT localizacao FROM departamento WHERE dept_id = 32)),
			('nome', 'departamento', 'Departamento de Engenharia de Produção de Sorocaba', (SELECT localizacao FROM departamento WHERE dept_id = 33)),
			('nome', 'departamento', 'Departamento de Biologia', (SELECT localizacao FROM departamento WHERE dept_id = 34)),
			('nome', 'departamento', 'Departamento de Ciências Humanas e Educação', (SELECT localizacao FROM departamento WHERE dept_id = 35)),
			('nome', 'departamento', 'Departamento de Geografia, Turismo e Humanidades', (SELECT localizacao FROM departamento WHERE dept_id = 36)),
			('nome', 'departamento', 'Departamento de Ciências Ambientais', (SELECT localizacao FROM departamento WHERE dept_id = 37)),
			('nome', 'departamento', 'Departamento de Física, Química e Matemática', (SELECT localizacao FROM departamento WHERE dept_id = 38)),
			('nome', 'departamento', 'Departamento de Artes e Comunicação', (SELECT localizacao FROM departamento WHERE dept_id = 39)),
			('nome', 'departamento', 'Departamento de Ciência da Informação', (SELECT localizacao FROM departamento WHERE dept_id = 40)),
			('nome', 'departamento', 'Departamento de Ciências Sociais', (SELECT localizacao FROM departamento WHERE dept_id = 41)),
			('nome', 'departamento', 'Departamento de Educação', (SELECT localizacao FROM departamento WHERE dept_id = 42)),
			('nome', 'departamento', 'Departamento de Filosofia e Metodologia das Ciências', (SELECT localizacao FROM departamento WHERE dept_id = 43)),
			('nome', 'departamento', 'Departamento de Letras', (SELECT localizacao FROM departamento WHERE dept_id = 44)),
			('nome', 'departamento', 'Departamento de Metodologia de Ensino', (SELECT localizacao FROM departamento WHERE dept_id = 45)),
			('nome', 'departamento', 'Departamento de Psicologia', (SELECT localizacao FROM departamento WHERE dept_id = 46)),
			('nome', 'departamento', 'Departamento de Sociologia', (SELECT localizacao FROM departamento WHERE dept_id = 47)),
			('nome', 'departamento', 'Departamento de Teorias e Práticas e Pedagógicas', (SELECT localizacao FROM departamento WHERE dept_id = 48)),
			
			('dept_sigla', 'departamento', 'DDR', (SELECT localizacao FROM departamento WHERE dept_id = 1)),
			('dept_sigla', 'departamento', 'DBPVA', (SELECT localizacao FROM departamento WHERE dept_id = 2)),
			('dept_sigla', 'departamento', 'DCNME', (SELECT localizacao FROM departamento WHERE dept_id = 3)),
			('dept_sigla', 'departamento', 'DRNPA', (SELECT localizacao FROM departamento WHERE dept_id = 4)),
			('dept_sigla', 'departamento', 'DTAiSER', (SELECT localizacao FROM departamento WHERE dept_id = 5)),
			('dept_sigla', 'departamento', 'DB', (SELECT localizacao FROM departamento WHERE dept_id = 6)),
			('dept_sigla', 'departamento', 'DCAm', (SELECT localizacao FROM departamento WHERE dept_id = 7)),
			('dept_sigla', 'departamento', 'DCF', (SELECT localizacao FROM departamento WHERE dept_id = 8)),
			('dept_sigla', 'departamento', 'DEBE', (SELECT localizacao FROM departamento WHERE dept_id = 9)),
			('dept_sigla', 'departamento', 'DEFMH', (SELECT localizacao FROM departamento WHERE dept_id = 10)),
			('dept_sigla', 'departamento', 'DEnf', (SELECT localizacao FROM departamento WHERE dept_id = 11)),
			('dept_sigla', 'departamento', 'DFisio', (SELECT localizacao FROM departamento WHERE dept_id = 12)),
			('dept_sigla', 'departamento', 'DGE', (SELECT localizacao FROM departamento WHERE dept_id = 13)),
			('dept_sigla', 'departamento', 'DGero', (SELECT localizacao FROM departamento WHERE dept_id = 14)),
			('dept_sigla', 'departamento', 'DHb', (SELECT localizacao FROM departamento WHERE dept_id = 15)),
			('dept_sigla', 'departamento', 'DMed', (SELECT localizacao FROM departamento WHERE dept_id = 16)),
			('dept_sigla', 'departamento', 'DMP', (SELECT localizacao FROM departamento WHERE dept_id = 17)),
			('dept_sigla', 'departamento', 'DTO', (SELECT localizacao FROM departamento WHERE dept_id = 18)),
			('dept_sigla', 'departamento', 'DC', (SELECT localizacao FROM departamento WHERE dept_id = 19)),
			('dept_sigla', 'departamento', 'DECiv', (SELECT localizacao FROM departamento WHERE dept_id = 20)),
			('dept_sigla', 'departamento', 'DEE', (SELECT localizacao FROM departamento WHERE dept_id = 21)),
			('dept_sigla', 'departamento', 'DEMec', (SELECT localizacao FROM departamento WHERE dept_id = 22)),
			('dept_sigla', 'departamento', 'DEMa', (SELECT localizacao FROM departamento WHERE dept_id = 23)),
			('dept_sigla', 'departamento', 'DEP', (SELECT localizacao FROM departamento WHERE dept_id = 24)),
			('dept_sigla', 'departamento', 'DEQ', (SELECT localizacao FROM departamento WHERE dept_id = 25)),
			('dept_sigla', 'departamento', 'DEs', (SELECT localizacao FROM departamento WHERE dept_id = 26)),
			('dept_sigla', 'departamento', 'DF', (SELECT localizacao FROM departamento WHERE dept_id = 27)),
			('dept_sigla', 'departamento', 'DM', (SELECT localizacao FROM departamento WHERE dept_id = 28)),
			('dept_sigla', 'departamento', 'DQ', (SELECT localizacao FROM departamento WHERE dept_id = 29)),
			('dept_sigla', 'departamento', 'DAdm-So', (SELECT localizacao FROM departamento WHERE dept_id = 30)),
			('dept_sigla', 'departamento', 'DComp-So', (SELECT localizacao FROM departamento WHERE dept_id = 31)),
			('dept_sigla', 'departamento', 'DECo-So', (SELECT localizacao FROM departamento WHERE dept_id = 32)),
			('dept_sigla', 'departamento', 'DEP-So', (SELECT localizacao FROM departamento WHERE dept_id = 33)),
			('dept_sigla', 'departamento', 'DBio-So', (SELECT localizacao FROM departamento WHERE dept_id = 24)),
			('dept_sigla', 'departamento', 'DCHE-So', (SELECT localizacao FROM departamento WHERE dept_id = 35)),
			('dept_sigla', 'departamento', 'DGHT-So', (SELECT localizacao FROM departamento WHERE dept_id = 36)),
			('dept_sigla', 'departamento', 'DCA-So', (SELECT localizacao FROM departamento WHERE dept_id = 37)),
			('dept_sigla', 'departamento', 'DFQM-So', (SELECT localizacao FROM departamento WHERE dept_id = 38)),
			('dept_sigla', 'departamento', 'DAC', (SELECT localizacao FROM departamento WHERE dept_id = 39)),
			('dept_sigla', 'departamento', 'DCI', (SELECT localizacao FROM departamento WHERE dept_id = 40)),
			('dept_sigla', 'departamento', 'DCSo', (SELECT localizacao FROM departamento WHERE dept_id = 41)),
			('dept_sigla', 'departamento', 'DEd', (SELECT localizacao FROM departamento WHERE dept_id = 42)),
			('dept_sigla', 'departamento', 'DFMC', (SELECT localizacao FROM departamento WHERE dept_id = 43)),
			('dept_sigla', 'departamento', 'DL', (SELECT localizacao FROM departamento WHERE dept_id = 44)),
			('dept_sigla', 'departamento', 'DME', (SELECT localizacao FROM departamento WHERE dept_id = 45)),
			('dept_sigla', 'departamento', 'DPsi', (SELECT localizacao FROM departamento WHERE dept_id = 46)),
			('dept_sigla', 'departamento', 'DS', (SELECT localizacao FROM departamento WHERE dept_id = 47)),
			('dept_sigla', 'departamento', 'DTPP', (SELECT localizacao FROM departamento WHERE dept_id = 48));

--- insert centro---
INSERT into indice_termos(SELECT 'nome', 'centro', 'Centro de Ciências Biológicas e de Saúde');
INSERT into indice_termos(SELECT 'nome', 'centro', 'Centro de Ciências Exatas e Tecnologia');
INSERT into indice_termos(SELECT 'nome', 'centro', 'Centro de Educação e Ciências Humanas');
INSERT into indice_termos(SELECT 'nome', 'centro', 'Centro de Ciências Agrárias');
INSERT into indice_termos(SELECT 'nome', 'centro', 'Centro de Ciências Humanas e Biológicas');
INSERT into indice_termos(SELECT 'nome', 'centro', 'Centro de Ciências em Gestão e Tecnologia');
INSERT into indice_termos(SELECT 'nome', 'centro', 'Centro de Ciências e Tecnologia para a Sustentabilidade');
INSERT into indice_termos(SELECT 'nome', 'centro', 'Centro de Ciências da Natureza');

INSERT into indice_termos(SELECT 'sigla_centro', 'centro', 'CCBS');
INSERT into indice_termos(SELECT 'sigla_centro', 'centro', 'CCET');
INSERT into indice_termos(SELECT 'sigla_centro', 'centro', 'CECH');
INSERT into indice_termos(SELECT 'sigla_centro', 'centro', 'CCA');
INSERT into indice_termos(SELECT 'sigla_centro', 'centro', 'CCHB');
INSERT into indice_termos(SELECT 'sigla_centro', 'centro', 'CCGT');
INSERT into indice_termos(SELECT 'sigla_centro', 'centro', 'CCTS');
INSERT into indice_termos(SELECT 'sigla_centro', 'centro', 'CCN');

---insert campus---
INSERT into indice_termos(SELECT 'nome', 'campus', 'São Carlos');
INSERT into indice_termos(SELECT 'nome', 'campus', 'Araras');
INSERT into indice_termos(SELECT 'nome', 'campus', 'Sorocaba');
INSERT into indice_termos(SELECT 'nome', 'campus', 'Lagoa do Sino');





