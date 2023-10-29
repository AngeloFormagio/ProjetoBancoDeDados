--SCRIPT PARA POPULAR AS TABELAS

-- TABELA DE CATEGORIAS

INSERT INTO CATEGORIAS (codigo, descricao)
VALUES (1, 'Concretagem');

INSERT INTO CATEGORIAS (codigo, descricao)
VALUES (2, 'Acesso e Elevação');

INSERT INTO CATEGORIAS (codigo, descricao)
VALUES (3, 'Geradores e Compresores');

INSERT INTO CATEGORIAS (codigo, descricao)
VALUES (4, 'Andaimes');

INSERT INTO CATEGORIAS (codigo, descricao)
VALUES (5, 'Ferramenta Elétrica');




-- TABELA DE CONSTRUTORAS



INSERT INTO CONSTRUTORAS (codigo, nome, nome_fantasia)
VALUES (10, 'Construtora Alfa S.A', 'Alfa Incorporações');

-- CONSTRUTORA INVENTADA
INSERT INTO CONSTRUTORAS (codigo, nome, nome_fantasia)
VALUES (12, 'Angelo Formagio S.A', 'Formagio Construções');



-- TABELA DE EQUIPAMENTOS
INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (301,'Betoneira',100.00, 1);

INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (302,'Cortadora de Piso',10.00,1);


INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (303,'Mangote',30.50,1);

INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (304,'Guincho',250.00,2);

INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (305,'Gerador',350.00,3);

INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (306,'Piso Metálico',150.00,4);

INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (307,'Furadeira de bancada',65.00,5);

INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (308,'Parafusadeira',37.00,5);

INSERT INTO EQUIPAMENTOS (codigo, nome, valor_diario, categoria)
VALUES (309,'Plaina',25.00,5);

-- TABELA DE OBRAS

INSERT INTO OBRAS (codigo, logradouro, numero, complemento, nome, construtora)
VALUES (115,'Travessa dos Lagos',100,'Norte', 'Condomínio dos Lagos', 10);

INSERT INTO OBRAS (codigo, logradouro, numero, complemento, nome, construtora)
VALUES (116,'Avenida Rio Grande',22,'Lado A', 'Condomínio Araras',10);

-- CRIAR 2 OBRAS

INSERT INTO OBRAS (codigo, logradouro, numero, complemento, nome, construtora)
VALUES (200,'Avenida Rio dos Patos',59,'Lado A', 'Parque da lagoa',12);


INSERT INTO OBRAS (codigo, logradouro, numero, complemento, nome, construtora)
VALUES (171,'Avenida Piracaju',33,'Centro sul', 'Condominio das libelulas',12);


-- TABELA TELEFONES
INSERT INTO TELEFONES (telefone, construtora)
VALUES (5133333334, 10);

INSERT INTO TELEFONES (telefone, construtora)
VALUES (5133333335,10);

INSERT INTO TELEFONES (telefone, construtora)
VALUES (5133333336,10);

-- TABELA OBRAS X EQUIPAMENTO
INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (115,301,'18/03/2022','24/10/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (115,304,'20/04/2022','02/08/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (115,306,'06/07/2021','18/07/2021');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (115,307,'04/03/2022','20/03/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (115,309,'04/08/2021','10/08/2021');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (116,304,'23/10/2022','25/10/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (116,305,'07/03/2022','10/03/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (116,306,'12/09/2022','21/09/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (116,307,'16/08/2022','24/08/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (116,308,'23/10/2022','25/10/2022');

-- TABELA DE TRABALHADORES
INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (10110110134,'José Chaves',2200.00,115);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (10210210291,'Pedro Passos',3502.18,115);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (10310310318,'Maria Aparecida',2800.87,115);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (10410410452,'Carlos Dutra',3100.00,116);


INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (10510510585,'Mário Pires',4323.29,116);

-- CRIAR 5 TRABALHADORES PARA CADA OBRA INVENTADA

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (88899978900, 'Armando Faria', 2000.00,200 );

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (77766654510,'Bruno Rodrigues',1400.00,200);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (12132344412,'Mariano Souza', 1000.00,200);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (33399987800,'Lindomar Douglas',3000.00,200);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (77765690033,'Wendel Junior',3000.00,200);


INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (90071344430,'Fabiano Figueredo',4000.00,171);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (32010040022,'Vitor Jacques',5000.00,171);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (34457520011,'Jorge Luz',1300.00,171);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (22200090816,'Rodrigo Silva', 4000.00,171);

INSERT INTO TRABALHADORES (codigo, nome, salario, obra)
VALUES (36778896613,'Juan Oliveira',1500.00,171);



-- ALOCAR AO MENOS 4 EQUIPAMENTO DE CATEGORIAS DIFERENTES A PRIMEIRA OBRA QUE VOCE CRIOU

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (171,301,'26/10/2022','29/10/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (171,304,'29/10/2022','03/11/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (171,305,'10/10/2022','13/10/2022');

INSERT INTO OBRAS_EQUIPAMENTOS (obra, equipamento, data_inicio, data_final)
VALUES (171,306,'16/10/2022','22/10/2022');
