CREATE DATABASE sprint1;

USE sprint1;

1. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Escreva e execute os comandos para:
• Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da
tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha
(int, representando a quantidade de medalhas que o atleta possui)
• Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
e pelo menos 5 atletas.


CREATE TABLE tbAtleta (
idAtleta INT PRIMARY KEY,
nome VARCHAR (40),
modalidade VARCHAR (40),
qtdmedalha INT
);

INSERT INTO tbAtleta VALUES
( 1,'Will Dantas','Futebol',10),
( 2,'Leonardo Brito','Futebol',40),
( 3,'Marcelo Alcantara','Futebol',30),
( 4,'Luan Viana','Futebol',15),
( 5,'Vinicius Jovino','Futebol',20);





Escreva e execute os comandos para:
• Exibir todos os dados da tabela.

SELECT * FROM tbAtleta;

-- Atualizar a quantidade de medalhas do atleta com id=1;

UPDATE tbAtleta SET qtdmedalha = 1 WHERE idAtleta;

-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;

UPDATE tbAtleta SET qtdmedalha = 2 WHERE idAtleta;
UPDATE tbAtleta SET qtdmedalha = 3 WHERE idAtleta;


-- Atualizar o nome do atleta com o id=4;
UPDATE tbAtleta SET qtdmedalha = 4 WHERE idAtleta;

-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
ALTER TABLE tbAtleta ADD COLUMN datanascimento date;

-- Atualizar a data de nascimento de todos os atletas;

UPDATE tbAtleta SET datanascimento = '2004-03-31' WHERE idAtleta = 1;
UPDATE tbAtleta SET datanascimento = '2004-06-10' WHERE idAtleta = 2;
UPDATE tbAtleta SET datanascimento = '2004-09-23' WHERE idAtleta = 3;
UPDATE tbAtleta SET datanascimento = '2004-06-14' WHERE idAtleta = 4;
UPDATE tbAtleta SET datanascimento = '2004-06-14' WHERE idAtleta = 5;


-- Excluir o atleta com o id=5;
  DELETE FROM tbAtleta WHERE  idAtleta=5;

-- Exibir os atletas onde a modalidade é diferente de natação;

SELECT * FROM tbAtleta WHERE modalidade != 'natação';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;

SELECT * FROM tbAtleta WHERE qtdmedalha >=3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;

ALTER TABLE tbAtleta MODIFY COLUMN modalidade VARCHAR (60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;

desc tbAtleta;


-- Limpar os dados da tabela; 

TRUNCATE TABLE tbAtleta;



2. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista
(tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma
música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo
menos umas 7 músicas.



CREATE TABLE tbMusica(
idMusica INT PRIMARY KEY,
titulo VARCHAR (40),
artista VARCHAR (40),
genero VARCHAR (40)
);

INSERT INTO tbMusica VALUES

(1,'TIM MAIA-ELA PARTIU','KEVIN','TRAP'),
(2,'PISCINA DIAMANTE','KEVIN','TRAP'),
(3,'NINGUEM TA PURO','IG','FUNK'),
(4,'NÓS E MALOQUEIRO','KADU','FUNK'),
(5,'INVENCÍVEL','HARIEL E DANIEL','FUNK'),
(6,'FINAL DE ANO','DON JUAN E PAIVA','FUNK'),
(7,'RAP OBITO','TAUZ','RAP');


Execute os comandos para:
-- Exibir todos os dados da tabela.
SELECT * FROM tbMusica;

-- Adicionar o campo curtidas do tipo int na tabela;

ALTER TABLE tbMusica ADD COLUMN curtidas INT;
SELECT * FROM tbMusica;
-- Atualizar o campo curtidas de todas as músicas inseridas;

UPDATE tbMusica SET curtidas='500' WHERE idMusica=1;
UPDATE tbMusica SET curtidas='500' WHERE idMusica=2;
UPDATE tbMusica SET curtidas='100' WHERE idMusica=3;
UPDATE tbMusica SET curtidas='200' WHERE idMusica=4;
UPDATE tbMusica SET curtidas='300' WHERE idMusica=5;
UPDATE tbMusica SET curtidas='400' WHERE idMusica=6;
UPDATE tbMusica SET curtidas='600' WHERE idMusica=7;

SELECT * FROM tbMusica;

-- Modificar o campo artista do tamanho 40 para o tamanho 80;

ALTER TABLE tbMusica MODIFY COLUMN artista VARCHAR (80);

-- Atualizar a quantidade de curtidas da música com id=1;

UPDATE tbMusica SET curtidas=80000 WHERE idMusica =1;


-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;


UPDATE tbMusica SET curtidas=90000000 WHERE idMusica=2;
UPDATE tbMusica SET curtidas=1000000 WHERE idMusica=3;
SELECT*FROM tbMusica;
-- Atualizar o nome da música com o id=5;

UPDATE tbMusica SET titulo ='TZ DA CORONEL' WHERE idMusica=5;
SELECT*FROM tbMusica;

-- Excluir a música com o id=4;

DELETE FROM tbMusica  WHERE idMusica=4;

-- Exibir as músicas onde o gênero é diferente de funk;

SELECT * FROM tbMusica WHERE genero !='funk';


-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;


SELECT * FROM tbMusica WHERE curtidas >=20;



-- Descrever os campos da tabela mostrando a atualização do campo artista;

DESC tbMusica;

-- Limpar os dados da tabela; 



TRUNCATE TABLE tbMusica



3. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.
Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um
filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos
uns 7 filmes.


CREATE TABLE tbFilme (
idFilme INT PRIMARY KEY,
titulo VARCHAR (50),
genero VARCHAR (40),
diretor VARCHAR (40)
);


INSERT INTO tbFilme VALUES
(1,'BEN 10 CORRIDA CONTRA O TEMPO','ACÃO','ALEX'),
(2,'BRANQUELAS','COMÉDIA','ZACK'),
(3,'PEQUENINO','COMÉDIA','ZOE PARKI'),
(4,'TED','COMÉDIA','ANNA'),
(5,'ANABELLE','TERROR','JASON'),
(6,'CHUCKY','TERROR','BEN'),
(7,'PONTE PRA TERABITIA','SUSPENSE','HENRY');


Execute os comandos para:
-- Exibir todos os dados da tabela.
SELECT * FROM tbFilme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
ALTER TABLE tbFilme ADD COLUMN protagonista VARCHAR (50);
SELECT * FROM tbFilme;
-- Atualizar o campo protagonista de todas os filmes inseridos;
UPDATE tbFilme SET protagonista='BEN' WHERE idFilme=1;
UPDATE tbFilme SET protagonista='AS IRMÃS WILSON' WHERE idFilme=2;
UPDATE tbFilme SET protagonista='pequenino' WHERE idFilme=3;
UPDATE tbFilme SET protagonista='TED' WHERE idFilme=4;
UPDATE tbFilme SET protagonista='ANABELLE' WHERE idFilme=5;
UPDATE tbFilme SET protagonista='CHUCKY' WHERE idFilme=6;
UPDATE tbFilme SET protagonista='ZACK' WHERE idFilme=7;








-- Modificar o campo diretor do tamanho 40 para o tamanho 150;

ALTER TABLE tbFilme MODIFY COLUMN diretor VARCHAR(150);
SELECT * FROM tbFilme;
-- Atualizar o diretor do filme com id=5;


UPDATE tbFilme SET diretor='Keli Cristina' WHERE idFilme='5';


-- Atualizar o diretor dos filmes com id=2 e com o id=7;

UPDATE tbFilme SET diretor='Will Dantas' WHERE idFilme='2';
UPDATE tbFilme SET diretor ='Ewerton' WHERE idFilme='7';
SELECT * FROM tbFilme;
--  Atualizar o título do filme com o id=6;

UPDATE tbFilme SET titulo='NINGUEM TA PURO' WHERE idFilme='6';
SELECT * FROM tbFilme;
-- Excluir o filme com o id=3;


DELETE FROM tbFilme WHERE idFilme='3';



-- Exibir os filmes em que o gênero é diferente de drama;

SELECT * FROM tbFilme WHERE genero !='drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
SELECT * FROM tbFilme WHERE genero = 'suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
DESC tbFilme;

-- Limpar os dados da tabela;

TRUNCATE TABLE tbFilme;




4. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50),
especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da
tabela.
Exemplo do campo data: ‘AAAA-MM-DD’, ‘1983-10-13’.
Inserir dados na tabela, procurando colocar uma especialista para mais de um professor.
Procure inserir pelo menos uns 6 professores


CREATE TABLE tbProfessor (
idProfessor INT PRIMARY KEY,
nome VARCHAR (50),
especialidade VARCHAR (40),
dtNasc DATE
);





INSERT INTO tbProfessor VALUES
(1,'Will Dantas','Banco de dados','2004-03-31'),
(2,'Leonardo Brito','Banco de dados','2004-06-10'),
(3,'Marcelo Alcantara','Javascript','2003-09-23'),
(4,'Ewerton','Javascript','2002-07-14'),
(5,'Luan Viana','Javascript','2004-08-14'),
(6,'Vinicius Jovino','Javascript','2004-06-14');


-- Exibir todos os dados da tabela.
SELECT * FROM tbProfessor;


-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’;
ALTER TABLE tbProfessor ADD COLUMN funcao VARCHAR (50);
ALTER TABLE tbProfessor ADD CONSTRAINT CHECK (funcao IN
('monitor','assistente','titular'));


-- Atualizar os professores inseridos e suas respectivas funções;
UPDATE tbProfessor SET funcao='titular' WHERE idProfessor='1';
UPDATE tbProfessor SET funcao='titular' WHERE idProfessor='2';
UPDATE tbProfessor SET funcao='titular' WHERE idProfessor='3';
UPDATE tbProfessor SET funcao='monitor' WHERE idProfessor='4';
UPDATE tbProfessor SET funcao='monitor' WHERE idProfessor='5';
UPDATE tbProfessor SET funcao='assistente' WHERE idProfessor='6';


-- Inserir um novo professor;

INSERT INTO tbProfessor VALUES
(7,'João','Banco de dados','2010-03-14','titular');

-- Excluir o professor onde o idProfessor é igual a 5;

DELETE FROM tbProfessor WHERE idProfessor='5';

-- Exibir apenas os nomes dos professores titulares;

SELECT * FROM tbProfessor WHERE funcao ='titular';

-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores;

SELECT * FROM tbProfessor WHERE funcao ='monitor';

-- Atualizar a data de nascimento do idProfessor igual a 3;

UPDATE tbProfessor SET dtNasc='2000-03-14' WHERE idProfessor='3';
SELECT * FROM tbProfessor;
-- Limpar a tabela Professor;

TRUNCATE TABLE tbProfessor;


5. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla
(tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
Inserir dados na tabela, procure inserir pelo menos 3 cursos.
Execute os comandos para:
CREATE TABLE tbCurso (
idCurso INT PRIMARY KEY,
nome VARCHAR (50),
sigla VARCHAR(3),
coordenador VARCHAR (50)
);


INSERT INTO tbCurso VALUES

(1,'Will Dantas','ADS','Gerson'),
(2,'Leonardo Brito','SIS','Alex Barrera'),
(3,'Marcelo Alcantara','CCO','Marise');



-- Exibir todos os dados da tabela.
SELECT * FROM tbCurso;
-- Exibir apenas os coordenadores dos cursos.
SELECT coordenador FROM tbCurso;
-- Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT sigla FROM tbCurso;
-- Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM tbCurso ORDER BY sigla;
-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT * FROM tbCurso ORDER BY coordenador DESC;
-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM tbCurso WHERE sigla LIKE'%a%';
-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM tbCurso WHERE sigla LIKE'%s';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM tbCurso WHERE sigla LIKE'_d%';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM tbCurso WHERE sigla LIKE'%i_';


-- Elimine a tabela.
TRUNCATE TABLE tbCurso;


6. No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
Você vai criar uma tabela para armazenar os dados de revistas (como por ex: Veja, Isto é,
Epoca, Quatro Rodas, Claudia, etc).
Escreva e execute os comandos para:
• Criar a tabela chamada Revista para conter os campos: idRevista (int e chave
primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os
valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente
pelo sistema.
• Inserir 4 registros na tabela, mas sem informar a categoria.


CREATE TABLE tbRevista (
idRevista INT PRIMARY KEY ,
nome VARCHAR (40),
categoria VARCHAR (30)
);


INSERT INTO tbRevista VALUES 
(1,'São Paulo Tech','noticiario'),
(2,'Palmarino','noticiario'),
(3,'Oliveira Telles','noticiario'),
(4,'Etec Guaianases','noticiario');


Escreva e execute os comandos para:
-- Exibir todos os dados da tabela.
SELECT * FROM tbRevista;
-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela,novamente para verificar se atualizou corretamente.
UPDATE tbRevista SET nome='Batcaverna' WHERE idRevista='1';
UPDATE tbRevista SET nome='Thiago Romariz' WHERE idRevista='2';
UPDATE tbRevista SET nome='Ei Nerd' WHERE idRevista='3';
UPDATE tbRevista SET nome='Decimo 14' WHERE idRevista='4';
SELECT * FROM tbRevista;

-- Insira mais 3 registros completos.
INSERT INTO tbRevista VALUES
(5,'jogo Aberto','noticiario'),
(6,'The Nerds','noticiario'),
(7,'GR6','noticiario');
SELECT * FROM tbRevista;

-- Exibir novamente os dados da tabela.

SELECT * FROM tbRevista;
-- Exibir a descrição da estrutura da tabela.

DESC tbRevista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres

ALTER TABLE tbRevista MODIFY COLUMN categoria VARCHAR (40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria

DESC tbRevista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).


ALTER TABLE tbRevista ADD COLUMN periodicidade VARCHAR (15);



-- Exibir os dados da tabela.

SELECT * FROM tbRevista;


-- Excluir a coluna periodicidade da tabe
ALTER TABLE tbRevista  DROP COLUMN periodicidade;


