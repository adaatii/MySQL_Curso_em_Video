/*DDL - Data Definition Language 
 *DML - Data Manipulation Language*/
/*Inserindo registros na tabela cursos*/
INSERT INTO cursos VALUES
('1','HTML4', 'Curso HTML5', '40', '37','2014'),
('2','Algoritmos', 'Lógica de Programação', '20', '15','2014'),
('3','Photoshop', 'Dicas de Photoshop CC', '10', '8','2014'),
('4','PGP', 'Curso de PHP para iniciantes', '40', '20','2010'),
('5','Jarva', 'Introdução a linguagem Java', '10', '29','2000'),
('6','MySQL', 'Bancos de Dados MySQL', '30', '15','2016'),
('7','Word', 'Curso completo de Word', '40', '30','2016'),
('8','Sapateado', 'Danças Rítmicas', '40', '30','2018'),
('9','Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30','2018'),
('10','Youtuber', 'Gerar Polêmica e ganhar inscritos', '5', '2','2018');

/*Modificando nome varchar para 20*/
ALTER TABLE cursos 
MODIFY COLUMN nome varchar(20);

SELECT * FROM cursos;

/*Atualizando registros*/
UPDATE cursos 
SET nome = 'HTML5' 
WHERE idcurso = '1';

UPDATE cursos 
SET nome = 'PHP', ano = '2015' 
WHERE idcurso = '4';

UPDATE cursos 
SET nome = 'Java', carga = '40', ano = '2015' 
WHERE idcurso = '5'
LIMIT 1;

UPDATE cursos 
SET  ano = '2018', carga = '0' 
WHERE ano = '2050'
LIMIT 1;

/*Deletando registros*/
DELETE FROM cursos 
WHERE idcurso = '8';

DELETE FROM cursos 
WHERE ano  = '2050'
LIMIT 2;

/*Deletando todos os registros*/
TRUNCATE TABLE cursos; 

