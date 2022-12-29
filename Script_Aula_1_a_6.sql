CREATE TABLE `pessoas`(
`id` int NOT NULL AUTO_INCREMENT,
`nome` varchar(30) NOT NULL,
`nascimento` date,
`sexo` enum('M','F'),
`peso` decimal(5,2),
`altura` decimal(3,2),
`nacionalidade` varchar(20) DEFAULT 'Brasil',
PRIMARY KEY(id)
)DEFAULT CHARSET = utf8

INSERT INTO pessoas
(id,nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Ana', '1990-10-05', 'F', '50.2', '1.65', DEFAULT ),
(DEFAULT, 'Claudio', '1975-05-10', 'M', '80.0', '1.90', 'Alemanha' ),
(DEFAULT, 'Paulo', '2003-02-14', 'M', '75.8', '1.75', 'EUA' );

SELECT * from pessoas;

DESC gafanhotos;

ALTER TABLE pessoas 
ADD COLUMN profissao varchar(10);

ALTER TABLE pessoas 
DROP COLUMN profissao;

ALTER TABLE pessoas 
ADD COLUMN profissao varchar(10) AFTER nome;

ALTER TABLE pessoas 
ADD COLUMN codigo int FIRST;

ALTER TABLE pessoas 
MODIFY COLUMN  profissao varchar(20);

ALTER TABLE pessoas 
CHANGE COLUMN  profissao prof varchar(20);

ALTER TABLE pessoas 
RENAME TO gafanhotos;

CREATE TABLE IF NOT EXISTS cursos(
nome varchar(10) NOT NULL UNIQUE,
descricao text,
carga int UNSIGNED,
totaulas int,
ano year DEFAULT '2022'
)DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS gafanhotos(
nome varchar(10) NOT NULL UNIQUE,
descricao text,
carga int UNSIGNED,
totaulas int,
ano year DEFAULT '2022'
)DEFAULT CHARSET = utf8;

DESC cursos;

ALTER TABLE cursos 
ADD COLUMN idcurso int FIRST;

ALTER TABLE cursos 
ADD PRIMARY KEY (idcurso);

CREATE TABLE IF NOT EXISTS teste(
nome varchar(10) NOT NULL UNIQUE,
descricao text,
carga int UNSIGNED,
totaulas int,
ano year DEFAULT '2022'
)DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS teste;


