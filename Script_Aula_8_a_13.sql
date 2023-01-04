/*Pesquisa*/
SELECT * FROM cursos 
WHERE nome LIKE 'P%';

SELECT * FROM cursos
WHERE nome LIKE 'A%';

SELECT * FROM cursos
WHERE nome LIKE '%A%';

SELECT * FROM cursos
WHERE nome NOT LIKE '%A%';

UPDATE cursos SET nome = 'PÁOO' WHERE idcurso = '9';

SELECT * FROM cursos
WHERE nome LIKE 'P_P%';

SELECT * FROM gafanhotos;

/*Distiguir*/
SELECT DISTINCT nacionalidade FROM gafanhotos
order by nacionalidade;

SELECT COUNT(*) FROM cursos;

/*Funções de agregação*/
SELECT COUNT(*) FROM cursos
WHERE carga > 10;

SELECT * FROM cursos ORDER BY carga;

SELECT MAX(carga) FROM cursos;

SELECT nome, MAX(totaulas) from cursos WHERE ano = '2016';

SELECT SUM(totaulas) FROM cursos;

SELECT AVG(totaulas) FROM cursos;

SELECT * FROM gafanhotos;

SELECT * FROM gafanhotos
WHERE sexo = 'F';

SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

SELECT nome FROM gafanhotos
WHERE sexo = 'M' AND prof LIKE 'Programador';

SELECT * FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade LIKE 'BRASIL' AND nome LIKE 'J%';

/*Agrupar*/
SELECT carga FROM cursos
GROUP BY carga;

SELECT totaulas, COUNT (*)FROM cursos
GROUP BY totaulas 
ORDER BY totaulas;

SELECT carga, COUNT(nome) FROM cursos WHERE totaulas = 30
GROUP BY carga;

SELECT ano, COUNT(*) FROM cursos
WHERE totaulas > 5
GROUP BY ano
HAVING COUNT(ano)>=3  /*HAVING só é utilizado com o campo que foi agrupado*/ 
ORDER BY COUNT(*);

SELECT AVG(carga) FROM cursos; 

SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos); 

SELECT prof, COUNT(prof) FROM gafanhotos
GROUP BY prof;

SELECT sexo , COUNT(sexo)  FROM gafanhotos
WHERE nascimento > '1990-01-01'
GROUP BY sexo;

SELECT nacionalidade, COUNT(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade 
HAVING COUNT(*) > 0; 

SELECT altura, COUNT(*) FROM gafanhotos
WHERE peso > 20
GROUP BY altura 
HAVING altura > (SELECT AVG(altura)FROM gafanhotos); 

