---Updates pro_reitoria---
UPDATE pro_reitoria SET localizacao = (SELECT way FROM ufscar_saocarlos_point WHERE name = 'Pró-Reitoria de Graduação')
		WHERE preitoria_id = 1;
UPDATE pro_reitoria SET localizacao = (SELECT way FROM ufscar_saocarlos_point WHERE name = 'Pró-Reitoria de Pós-Graduação')
		WHERE preitoria_id = 2;	
UPDATE pro_reitoria SET localizacao = (SELECT way FROM ufscar_saocarlos_point WHERE name = 'Pró-Reitoria de Pesquisa')
		WHERE preitoria_id = 3;
UPDATE pro_reitoria SET localizacao = (SELECT way FROM ufscar_saocarlos_point WHERE name = 'Pró-Reitoria de Extensão')
		WHERE preitoria_id = 4;
UPDATE pro_reitoria SET localizacao = (SELECT way FROM ufscar_saocarlos_point WHERE name = 'Pró-Reitoria de Administração')
		WHERE preitoria_id = 7;
UPDATE pro_reitoria SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Pró-Reitoria de Gestão de Pessoas')
		WHERE preitoria_id = 5;		
UPDATE pro_reitoria SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Pró-Reitoria de Assuntos Comunitários e Estudantis')
		WHERE preitoria_id = 6;

---Updates Departamento---
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Botânica')
		WHERE dept_id = 6;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Ciências Ambientais')
		WHERE dept_id = 7;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Ciências Fisiológicas')
		WHERE dept_id = 8;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Ecologia e Biologia Evolutiva')
		WHERE dept_id = 9;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Educação Físcia e Motricidade Humana')
		WHERE dept_id = 10;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Enfermagem')
		WHERE dept_id = 11;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Fisioterapia')
		WHERE dept_id = 12;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Genética e Evolução')
		WHERE dept_id = 13;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Gerontologia')
		WHERE dept_id = 14;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Hidrobiologia')
		WHERE dept_id = 15;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Medicina')
		WHERE dept_id = 16;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Morfologia e Patologia')
		WHERE dept_id = 17;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Terapia Ocupacional')
		WHERE dept_id = 18;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Computação')
		WHERE dept_id = 19;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Engenharia Civil')
		WHERE dept_id = 20;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Engenharia Elétrica')
		WHERE dept_id = 21;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Engenharia Mecânica')
		WHERE dept_id = 22;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Engenharia de Materiais' AND way_area = 1130.77)
		WHERE dept_id = 23;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Engenharia de Produção')
		WHERE dept_id = 24;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Engenharia Química')
		WHERE dept_id = 25;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Estatística')
		WHERE dept_id = 26;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Física')
		WHERE dept_id = 27;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Matemática')
		WHERE dept_id = 28;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Química')
		WHERE dept_id = 29;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Artes e Comunicação' AND way_area = 1400.95)
		WHERE dept_id = 39;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Ciência da Informação')
		WHERE dept_id = 40;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Ciências Sociais')
		WHERE dept_id = 41;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Educação')
		WHERE dept_id = 42;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Filosofia e Metodologia das Ciências')
		WHERE dept_id = 43;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Letras')
		WHERE dept_id = 44;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Metodologia de Ensino')
		WHERE dept_id = 45;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Psicologia')
		WHERE dept_id = 46;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Sociologia')
		WHERE dept_id = 47;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_saocarlos_polygon WHERE name = 'Departamento de Teorias e Práticas Pedagógicas')
		WHERE dept_id = 48;

UPDATE departamento SET localizacao = (SELECT way FROM ufscar_araras_polygon WHERE name = 'Departamento de Desenvolvimento Rural')
		WHERE dept_id = 1;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_araras_polygon WHERE name = 'Departamento de Biotecnologia e Produção Vegetal e Animal')
		WHERE dept_id = 2;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_araras_polygon WHERE name = 'Departamento de Ciências da Natureza, Matemática e Educação')
		WHERE dept_id = 3;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_araras_polygon WHERE name = 'Departamento de Recursos Naturais e Proteção Ambiental')
		WHERE dept_id = 4;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_araras_polygon WHERE name = 'Departamento de Tecnologia Agroindustrial e Socioeconomia Rural')
		WHERE dept_id = 5;
		
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Administração')
		WHERE dept_id = 30;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Computação')
		WHERE dept_id = 31;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Economia')
		WHERE dept_id = 32;	
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Engenharia de Produção de Sorocaba')
		WHERE dept_id = 33;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Biologia')
		WHERE dept_id = 34;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Ciências Humanas e Educação')
		WHERE dept_id = 35;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Geografia, Turismo e Humanidades')
		WHERE dept_id = 36;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Ciências Ambientais')
		WHERE dept_id = 37;
UPDATE departamento SET localizacao = (SELECT way FROM ufscar_sorocaba_polygon WHERE name = 'Departamento de Física, Química e Matemática')
		WHERE dept_id = 38; 
