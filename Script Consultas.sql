-- CONSULTAS SQL

-- A) CPFS E NOMES DOS TRABALHADORES QUE GANHAM MAIS QUE 2500

SELECT NOME, CODIGO AS CPF FROM TRABALHADORES 
WHERE salario > 2500;

-- d) Calcular e exibir a folha de pagamento de cada obra.
-- Uma folha de pagamento é determinada pela soma dos salários dos seus trabalhadores.

SELECT SUM(salario) as folha_de_pagamento, obra from trabalhadores 
GROUP BY obra;


--   f) Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA.

SELECT descricao, E.codigo FROM CATEGORIAS C
JOIN EQUIPAMENTOS E
ON C.codigo = E.categoria
WHERE E.codigo IN (
	SELECT equipamento FROM OBRAS_EQUIPAMENTOS
	WHERE obra IN ( 
		SELECT codigo FROM OBRAS 
		WHERE construtora = 10));


b) Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente;

SELECT TRABALHADORES.NOME, SALARIO FROM TRABALHADORES
JOIN OBRAS ON TRABALHADORES.obra = OBRAS.codigo
WHERE OBRAS.construtora = 10
ORDER BY TRABALHADORES.nome,salario;


--7) Produzir um arquivo em formato JSON equivalente a todos os dados relacionados à construtora ALFA, incluindo suas obras e seus respectivos trabalhadores.
-- Use o conceito de dados agregados (e não de relacionamentos via “_id”). Em outras palavras, deverá haver apenas 1 objeto principal (sendo todos os demais agregados deste objeto).


SELECT JSON_OBJECT(
		   'obra'          VALUE obras.codigo,
                   'nome'        VALUE obras.nome,
    		   'endereco' value JSON_OBJECT(
    'logradouro' value obras.logradouro,
    'numero' value obras.numero),
    'folha_de_pagamento' value sum(trabalhadores.salario),
                   'trabalhadores' VALUE JSON_ARRAYAGG(trabalhadores.nome order by trabalhadores.nome)) Construtora_Alfa
FROM obras,
     trabalhadores
WHERE obras.codigo = trabalhadores.obra
GROUP BY obras.codigo, obras.nome, obras.logradouro, obras.numero ORDER BY obras.nome;
