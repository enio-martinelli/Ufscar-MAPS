/*DROP TABLE indice_termos*/

CREATE TABLE IF NOT EXISTS indice_termos(
    coluna VARCHAR NOT NULL,
    tabela VARCHAR NOT NULL,
	termo VARCHAR NOT NULL

);

---inserção reitoria---


---inserção pro_reitoria---
INSERT into indice_termos(SELECT 'nome', 'pro_reitoria', 'Pró-Reitoria de Graduação');
INSERT into indice_termos(SELECT 'nome', 'pro_reitoria', 'Pró-Reitoria de Pós-Graduação');
INSERT into indice_termos(SELECT 'nome', 'pro_reitoria', 'Pró-Reitoria de Pesquisa');
INSERT into indice_termos(SELECT 'nome', 'pro_reitoria', 'Pró-Reitoria de Extensão');
INSERT into indice_termos(SELECT 'nome', 'pro_reitoria', 'Pró-Reitoria de Gestão de Pessoas');
INSERT into indice_termos(SELECT 'nome', 'pro_reitoria', 'Pró-Reitoria de Assuntos Comunitários e Estudantis');
INSERT into indice_termos(SELECT 'nome', 'pro_reitoria', 'Pró-Reitoria de Administração');

INSERT into indice_termos(SELECT 'sigla_preitoria', 'pro_reitoria', 'ProGrad');
INSERT into indice_termos(SELECT 'sigla_preitoria', 'pro_reitoria', 'ProPG');
INSERT into indice_termos(SELECT 'sigla_preitoria', 'pro_reitoria', 'ProPq');
INSERT into indice_termos(SELECT 'sigla_preitoria', 'pro_reitoria', 'ProEx');
INSERT into indice_termos(SELECT 'sigla_preitoria', 'pro_reitoria', 'ProGPe');
INSERT into indice_termos(SELECT 'sigla_preitoria', 'pro_reitoria', 'ProACE');
INSERT into indice_termos(SELECT 'sigla_preitoria', 'pro_reitoria', 'ProAd');

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
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Desenvolvimento Rural');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Biotecnologia e Produção Vegetal e Animal');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Ciências da Natureza, Matemática e Educação');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Recursos Naturais e Proteção Ambiental');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Tecnologia Agroindustrial e Socioeconomia Rural');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Botânica');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Ciências Ambientais');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Ciências Fisiológicas');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Ecologia e Biologia Evolutiva');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Educação Físcia e Motricidade Humana');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Enfermagem');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Fisioterapia');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Genética e Evolução');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Gerontologia');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Hidrobiologia');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Medicina');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Morfologia e Patologia');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Terapia Ocupacional');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Computação');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Engenharia Civil');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Engenharia Elétrica');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Engenharia Mecânica');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Engenharia de Materiais');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Engenharia de Produção');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Engenharia Química');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Estatística');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Física');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Matemática');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Química');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Administração');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Computação');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Economia');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Engenharia de Produção de Sorocaba');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Biologia');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Ciências Humanas e Educação');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Geografia, Turismo e Humanidades');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Ciências Ambientais');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Física, Química e Matemática');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Artes e Comunicação');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Ciência da Informação');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Ciências Sociais');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Educação');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Filosofia e Metodologia das Ciências');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Letras');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Metodologia de Ensino');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Psicologia');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Sociologia');
INSERT into indice_termos(SELECT 'nome', 'departamento', 'Departamento de Teorias e Práticas e Pedagógicas');

INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DDR');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DBPVA');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DCNME');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DRNPA');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DTAiSER');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DB');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DCAm');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DCF');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEBE');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEFMH');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEnf');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DFisio');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DGE');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DGero');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DHb');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DMed');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DMP');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DTO');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DC');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DECiv');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEE');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEMec');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEMa');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEP');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEQ');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEs');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DF');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DM');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DQ');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DAdm-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DComp-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DECo-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEP-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DBio-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DCHE-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DGHT-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DCA-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DFQM-So');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DAC');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DCI');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DCSo');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DEd');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DFMC');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DL');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DME');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DPsi');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DS');
INSERT into indice_termos(SELECT 'dept_sigla', 'departamento', 'DTPP');







