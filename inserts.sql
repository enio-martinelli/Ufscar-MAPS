--- inserções centro ---
INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone) 
VALUES ('CCET', 1, 'Centro de Ciências Exatas e de Tecnologia', NULL, '16 3351-8201');

INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone)
VALUES ('CCBS', 1, 'Centro de Ciências Biológicas e da Saúde', NULL, '16 3351-8301');

INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone)
VALUES ('CECH', 1, 'Centro de Educação e Ciências Humanas', NULL, '16 3351-8351');

INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone)
VALUES ('CCGT', 1, 'Centro de Ciências em Gestão e Tecnologia', NULL, '15 3229-7546');

INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone)
VALUES ('CCHB', 1, 'Centro de Ciências Humanas e Biológicas', NULL, '15 3229-7470');

INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone)
VALUES ('CCTS', 1, 'Centro de Ciências e Tecnologias para Sustentabilidade', NULL, '15 3329-5937');

INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone)
VALUES ('CCA', 1, 'Centro de Ciências Agrárias', NULL, '19 3543-2600');

INSERT INTO centro (sigla_centro, reitoria_id, nome, localizacao, telefone)
VALUES ('CCN', 1, 'Centro de Ciências da Natureza', NULL, NULL);

--- inserções Professor ---
INSERT INTO professor (nome, email, titulo) 
VALUES ('Ana Beatriz de Oliveira', 'biaoliveira@ufscar.br', 'Doutora');

INSERT INTO professor (nome, email, titulo) 
VALUES ('Maria de Jesus Dutra dos Reis', 'dmjr@ufscar.br', 'Doutora');

--- inserções Reitoria Professor ---
#Profa. Dra. Ana Beatriz de Oliveira
INSERT INTO reitoria_professor (prof_id, reitoria_id, periodo, cargo) 
VALUES ((buscar tabela), 1, '2020 - Atual', 'Reitora',);

#Profa. Dra. Maria de Jesus Dutra dos Reis
INSERT INTO reitoria_professor (prof_id, reitoria_id, periodo, cargo) 
VALUES ((buscar tabela), 1, '2021 - Atual', 'Vice Reitora',);
