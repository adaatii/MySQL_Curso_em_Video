ALTER TABLE gafanhotos
ADD COLUMN cursopreferido INT;

DESC gafanhotos;

ALTER TABLE gafanhotos 
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);

SELECT * FROM gafanhotos;
SELECT * FROM cursos;

UPDATE gafanhotos SET cursopreferido = '4' WHERE id = '7';

DELETE FROM cursos WHERE idcurso = '10';

SELECT nome, cursopreferido FROM gafanhotos;

SELECT nome, ano FROM cursos;

SELECT g.nome, c.nome, c.ano 
FROM gafanhotos as g INNER JOIN cursos as c
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

SELECT g.nome, c.nome, c.ano 
FROM gafanhotos as g RIGHT JOIN cursos as c
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

SELECT g.nome, c.nome, c.ano 
FROM gafanhotos as g LEFT JOIN cursos as c
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

CREATE TABLE gafanhoto_assiste_cursos(
id INT NOT NULL AUTO_INCREMENT,
data DATE,
idgafanhoto INT,
idcurso INT,
PRIMARY KEY(id),
FOREIGN KEY(idgafanhoto) REFERENCES gafanhotos(id),
FOREIGN KEY(idcurso) REFERENCES cursos(idcurso)
)DEFAULT CHARSET = utf8;

INSERT INTO gafanhoto_assiste_cursos VALUES
(DEFAULT, '2019-03-01', '1','2'),
(DEFAULT, '2015-12-11', '1','4'),
(DEFAULT, '2022-08-28', '2','1');

SELECT * FROM gafanhoto_assiste_cursos;

SELECT g.nome, c.nome FROM gafanhotos g
JOIN gafanhoto_assiste_cursos gac 
ON g.id = gac.idgafanhoto
JOIN cursos c 
ON c.idcurso = gac.idcurso
ORDER BY g.nome ;





