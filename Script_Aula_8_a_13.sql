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
