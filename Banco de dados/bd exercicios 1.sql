
--1 No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Escreva e execute os comandos para:
• Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da
tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha
(int, representando a quantidade de medalhas que o atleta possui)
• Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade


CREATE DATABASE tbAtleta;

USE tbAtleta;



CREATE TABLE tbAtleta (
idAtleta INT PRIMARY KEY,
nome VARCHAR (40),
modalidade VARCHAR (40),
qtdmedalha INT
);


INSERT INTO tbAtleta VALUES
('1','PELE','FUTEBOL','55'),
('2','YURI ALBERTO','FUTEBOL','5'),
('3','ROGUER GUEDES','FUTEBOL','23'),
('4','MARADONA','FUTEBOL','40'),
('5','ROMERO','FUTEBOL','15'),
('6','GUGA','TENIS','25'),
('7','LEBRON JAMES','BASQUETE','65');



--  Exibir todos os dados da tabela.
SELECT * FROM tbAtleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.

SELECT nome,qtdmedalha FROM tbAtleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade.

SELECT * FROM tbAtleta WHERE modalidade ='FUTEBOL';

-- Exibir os dados da tabela ordenados pela modalidade.

SELECT * FROM tbAtleta ORDER BY modalidade ;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.

SELECT * FROM tbAtleta ORDER BY qtdmedalha DESC;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s

SELECT * FROM tbAtleta WHERE nome LIKE '%S%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.

SELECT * FROM tbAtleta WHERE nome LIKE '%S';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.

SELECT * FROM tbAtleta WHERE nome LIKE '%O';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.

SELECT * FROM tbAtleta WHERE nome LIKE '%R_';


-- Eliminar a tabela

DROP TABLE tbAtleta;


-------------------------------

2. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista
(tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma
música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo
menos umas 7 músicas.

CREATE DATABASE tbMusica;

USE tbMusica;




CREATE TABLE tbMusica(
idMusica INT PRIMARY KEY,
titulo VARCHAR (40) ,
artista VARCHAR (40) ,
genero VARCHAR (40) 
);


INSERT INTO tbMusica VALUES

('1','PISCINA DIAMANTE','KEVIN','TRAP'),
('2','TIM MAIA,MC KEBVIN','KEVIN','TRAP'),
('3','CHEGUEI NA HUMILDADE','KEVIN','FUNK'),
('4','NINGUEM TA PURO','DRICKA','FUNK PESADAO'),
('5','LEI DO RETORNO','DON JUAN E MC HARIEL','FUNK PESADAO'),
('6','AMASSA A PLACA',' KEVIN','FUNK');


-- Exibir todos os dados da tabela.
SELECT * FROM tbMusica;

-- Exibir apenas os títulos e os artistas das músicas.

SELECT titulo,artista FROM tbMusica;

-- Exibir apenas os dados das músicas de um determinado gênero.

SELECT * FROM tbMusica WHERE genero ='funk';

-- Exibir apenas os dados das músicas de um determinado artista.

SELECT * FROM tbMusica WHERE artista LIKE  'KEVIN';



-- Exibir os dados da tabela ordenados pelo título da música.

SELECT * FROM tbMusica ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente.

SELECT * FROM tbMusica ORDER BY artista DESC;


-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.

SELECT * FROM tbMusica WHERE titulo LIKE '%N';


-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.

SELECT * FROM tbMusica WHERE artista LIKE'%A';

-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.

 SELECT * FROM tbMusica WHERE genero LIKE '_U%';

-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.

SELECT * FROM tbMusica WHERE titulo LIKE '%R_';

-- Elimine a tabela.

DROP TABLE tbMusica



3. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.
Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um
filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos
uns 7 filmes.
CREATE DATABASE tbFilme;

USE tbFilme;


CREATE TABLE tbFilme (
idFilme  INT PRIMARY KEY,
titulo VARCHAR (50),
genero VARCHAR (40),
diretor VARCHAR (40)
);


INSERT INTO tbFilme VALUES 
('1','BEN 10 ENXAME ALIENIGINA','AVENTURA','Alex Winter'),
('2','BEN 10 Destruição Alienigina','ANIMAÇÃO','Victor Cook'),
('3','BEN 10: Corrida Contra o Tempo','AVENTURA','Diretor: Alex Winter'),
('4','BEN 10 SEGREDO OMNITRIX','ANIMAÇÃO',' Scooter Tidwell '),
('5','BEN 10 Versus o Universo: O Filme','ANIMAÇÃO','John McIntyre'),
('6','HOMEM ARANHA 1','ACÃO','SAM RAIMI'),
('7','HOMEM ARANHA 2','ACÃO','SAM RAIMI');





-- Exibir todos os dados da tabela.

SELECT * FROM tbFilme;

--  Exibir apenas os títulos e os diretores dos filmes.
SELECT  titulo,diretor FROM tbFilme ;

--  Exibir apenas os dados dos filmes de um determinado gênero.


SELECT  * FROM tbFilme  WHERE genero ='AVENTURA';

-- Exibir apenas os dados dos filmes de um determinado diretor.

SELECT  * FROM tbFilme  WHERE diretor ='ALEX WINTER';



-- Exibir os dados da tabela ordenados pelo título do filme.

SELECT * FROM tbFilme  ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.

SELECT * FROM tbFilme  ORDER BY diretor DESC;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.

SELECT  * FROM tbFilme  WHERE titulo LIKE 'b%';


-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.

SELECT  * FROM tbFilme  WHERE diretor LIKE '%K';


-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.

SELECT  * FROM tbFilme  WHERE genero LIKE '_V%';


-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.

SELECT  * FROM tbFilme  WHERE titulo LIKE '%N_';

 -- Elimine a tabela.
 
DROP TABLE tbFilme 





4. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50),
especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da
tabela.
Exemplo do campo data: ‘AAAA-MM-DD’ - ‘1983-10-13’.
Inserir dados na tabela, procurando colocar uma especialista para mais de um professor.
Procure inserir pelo menos uns 6 professores.

CREATE DATABASE tbProfessor;

USE tbProfessor;



CREATE TABLE tbProfessor (
idProfessor  INT PRIMARY KEY,
nome VARCHAR (50),
especialidade VARCHAR (40),
dtNasc date 
);


INSERT INTO tbProfessor VALUES 
('1','Will Dantas','FRONT-END','2004-3-31'),
('2','Leonardo Brito','BACK-END','2004-6-1'),
('3','Marcelo Alcantara','FRONT-END','2003-9-25'),
('4','Luan Viana','NENHUMA',' 2004-5-25'),
('5','Vinicius Jovino','NENHUMA','2004-4-20'),
('6','Thiago Neris','NENHUMA','2004-4-25'),
('7','Thaylor Kawan','NENHUMA','2003-5-24');




Execute os comandos para:
-- Exibir todos os dados da tabela.
SELECT * FROM tbProfessor

-- Exibir apenas as especialidades dos professores.

SELECT especialidade FROM tbProfessor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.

SELECT * FROM tbProfessor WHERE especialidade = 'FRONT-END';

-- Exibir os dados da tabela ordenados pelo nome do professor.

SELECT * FROM tbProfessor ORDER BY nome;

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.

SELECT * FROM tbProfessor ORDER BY dtNasc DESC;


-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.

SELECT  * FROM tbProfessor WHERE nome  LIKE 'L%';



-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.


SELECT  * FROM tbProfessor WHERE nome  LIKE '%O';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.

SELECT  * FROM tbProfessor WHERE nome  LIKE '_E%';


-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.


SELECT  * FROM tbProfessor WHERE nome  LIKE '%T_';

-- Elimine a tabela.


DROP TABLE tbProfessor




5. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla
(tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
Inserir dados na tabela, procure inserir pelo menos 3 cursos.
Execute os comandos para:
CREATE DATABASE tbCurso;

USE tbCurso;

CREATE TABLE tbCurso (
idCurso  INT PRIMARY KEY,
nome VARCHAR (50),
sigla VARCHAR (3),
coordenador VARCHAR (20)
);



INSERT INTO tbCurso VALUES 
('1','Will Dantas','ADS','GERSON'),
('2','Leonardo Brito','ADS','ALINE'),
('3','Marcelo Alcantara','ADS','MARCELA'),
('4','Luan Viana','SIS',' ROSANGELA'),
('5','Vinicius Jovino','SIS','VIVIAN'),
('6','Thiago Neris','CCO','LIVIA'),
('7','Thaylor Kawan','CCO','MICHELE');



-- Exibir todos os dados da tabela.
SELECT * FROM tbCurso;

--  Exibir apenas os coordenadores dos cursos.

SELECT coordenador FROM tbCurso;

-- xibir apenas os dados dos cursos de uma determinada sigla

SELECT * FROM tbcurso WHERE sigla ='ADS';

-- Exibir os dados da tabela ordenados pelo nome do curso.

SELECT * FROM tbCurso ORDER BY nome;

-- ) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente

SELECT * FROM tbCurso ORDER BY coordenador  DESC;


-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra

SELECT  * FROM tbCurso WHERE nome  LIKE 'L%';



-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra


SELECT  * FROM tbCurso WHERE nome  LIKE '%O';

-- ) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.


SELECT  * FROM tbCurso WHERE nome  LIKE '_A%';


-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.



SELECT  * FROM tbCurso WHERE nome  LIKE '%T_';


-- Elimine a tabela.


DROP TABLE tbCurso


-6. No MySQL Workbench, utilizando o banco de dados ‘sprint1’: Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é,
Epoca, Quatro Rodas, Claudia, etc).
Escreva e execute os comandos para:
• Criar a tabela chamada Revista para conter os campos: idRevista (int e chave
primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os
valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente
pelo sistema.
• Inserir 4 registros na tabela, mas sem informar a categoria.
Escreva e execute os comandos para:

CREATE DATABASE tbRevista;

USE tbRevista;

CREATE TABLE tbRevista(
idRevista INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
categoria VARCHAR (30)
);



INSERT INTO tbRevista(nome) VALUES 
(' Revista Veja') ,
('Revista Epoca') ,
('Revisa Istoe') ,
('Revista SP') ;





-- Exibir todos os dados da tabela.

SELECT * FROM tbRevista;

--  Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela
novamente para verificar se atualizou corretamente.

UPDATE tbRevista SET categoria = 'Noticiario' WHERE idRevista ='1';
UPDATE tbRevista SET categoria = 'Noticiario' WHERE idRevista ='2';
UPDATE tbRevista SET categoria = 'Noticiario' WHERE idRevista ='3';
UPDATE tbRevista SET categoria = 'Noticiario' WHERE idRevista ='4';



-- Insira mais 3 registros completos.

INSERT INTO tbRevista (nome,categoria) VALUES

('Globo','noticiario' ) ,
('Revista BA','noticiario' ) ,
('Revista RJ','noticiario' ) ;


-- Exibir novamente os dados da tabela.
SELECT * FROM tbRevista;


-- Exibir a descrição da estrutura da tabela.

DESC tbRevista;  

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.

ALTER TABLE tbRevista Modify column categoria VARCHAR (40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria

DESC tbRevista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).

ALTER TABLE tbRevista ADD COLUMN periodicidade VARCHAR (15);

-- Exibir os dados da tabela.
SELECT * FROM tbRevista;

-- Excluir a coluna periodicidade da tabela

ALTER TABLE tbRevista DROP COLUMN periodicidade;

-- EXCLUIR O BANCO DE DADOS SPRINT 1

DROP DATABASE tbAtleta;
DROP DATABASE tbMusica;
DROP DATABASE tbFilme;
DROP DATABASE tbProfessor;
DROP DATABASE tbCurso;
DROP DATABASE tbRevista;
