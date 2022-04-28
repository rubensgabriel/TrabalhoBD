/*Nome: Rubens Gabriel rodrigues de Souza 
  Curso: Sistemas de Informação  
  Unidade: Cataguases  Período: 5º  Data:28/04/2022 
*/
-- R1 Realize o seguinte:
CREATE SCHEMA aulabd;
USE aulabd;

CREATE TABLE resposta(
numQuestao int primary key,
desResposta varchar(500) not null
);

CREATE TABLE professor(
codigo int primary key,
nome varchar(60) not null,
cpf varchar (14) not null,
email varchar(100),
titulacao varchar(100),
fone varchar(10),
sexo char not null);

CREATE TABLE curso(
id int primary key auto_increment,
descricao varchar(500));

CREATE TABLE alunos(
id int primary key auto_increment,
nome varchar(100),
matricula int,
estado varchar(30),
sexo char,
fk_curso int,
foreign key alunos_fk_cuso(fk_curso) REFERENCES alunos(id) on update no action
);
 CREATE TABLE estado(
 UF VARCHAR(2) PRIMARY KEY,
 nomeEstado VARCHAR(50)
  );
  
   CREATE TABLE cidade( 
   nomeCidade VARCHAR(80), 
   UFcidade VARCHAR(2), 
   FOREIGN KEY estado_fk_cidade(UFcidade) REFERENCES estado(UF) on update no action
   );
   
  -- Insira dois professores:
INSERT INTO professor(codigo, nome, cpf, email, titulacao, fone, sexo) VALUES (001, "Lucas Souza","124.547.425-12","lukinhas02@gmail.com",
"História","327865478",'M'),
(002, "Wanda Silva",224.123.635-11,"wandacita@gmail.com","Sociologia","327895422",'F');

ALTER TABLE alunos ADD column email varchar(100) after sexo;
ALTER TABLE professor DROP COLUMN fone;
UPDATE aulabd.professor SET sexo = 'M' WHERE codigo and sexo = 'F';
DELETE FROM professor WHERE codigo and  sexo = 'F';
SELECT alunos.nome, alunos.matricula FROM alunos; 
SELECT professor.nome, professor.sexo FROM professor WHERE sexo = 'M';
SELECT alunos.nome, curso.descricao FROM alunos,curso;
select SEXO from PROFESSOR;

INSERT INTO estado(UF, nomeEstado) values ("MG","Minas Gerais"),("SP","São Paulo");
INSERT INTO cidade(nomeCidade, UFcidade) values ("Itamarati de Minas","MG"),("Cataguases","MG"),("Campinas","SP"),("São Paulo","SP");
INSERT INTO estado(UF, nomeEstado) values ("AC","Acre");
INSERT INTO cidade(nomeCidade, UFcidade) value ("Rio Branco","AC");
select *from resposta;
select *from cidade;
select *from estado;
describe table cidade;
SELECT *FROM cidade WHERE nomeCidade LIKE "A%";
SELECT *FROM cidade WHERE UFcidade = "MG";
SELECT cidade.nomeCidade, estado.nomeEstado FROM cidade, estado WHERE UFcidade = UF ORDER BY nomeCidade ASC;
SELECT  lower(nomeCidade) FROM cidade; 
SELECT  upper(nomeCidade) FROM cidade; 
SELECT  count(nomeCidade) as QtdCidadeEstado, nomeEstado as estado FROM cidade, estado WHERE estado.UF = cidade.UFcidade group by cidade.UFcidade; 



INSERT INTO resposta(numQuestao,desResposta) values(2,"Chaves primárias ou PK é um conjunto de um ou mais valores nos campos, cujo os valores ou conjunto de valores no caso de mais de uma PK, numca se repetem na mesma tabela é usado também como índice de referência para criar relacionamentos com as demais tabelas.");
INSERT INTO resposta(numQuestao,desResposta) values(3,"Chave estrangeira, ou Foreign Key (FK), ou ainda chave externa é a chave que permite a referência a registros oriundos de outras tabelas, é o campo ou conjunto de campos que compõem a chave primária de uma outra tabela.");
INSERT INTO resposta(numQuestao,desResposta) values(4,"CREATE TABLE curso(id int primary key auto_increment,descricao varchar(500));");
INSERT INTO resposta(numQuestao,desResposta) values(5,"CREATE TABLE alunos(id int primary key auto_increment,nome varchar(100),matricula int,estado varchar(30),sexo char,fk_curso int,foreign key alunos_fk_cuso(fk_curso) REFERENCES alunos(id) on update no action);");
INSERT INTO resposta(numQuestao,desResposta) values(6,"ALTER TABLE alunos ADD column email varchar(100) after sexo;");
INSERT INTO resposta(numQuestao,desResposta) values(7,"ALTER TABLE professor DROP COLUMN fone;");
INSERT INTO resposta(numQuestao,desResposta) values(8,"UPDATE aulabd.professor SET sexo = 'M' WHERE codigo AND sexo = 'F';");
INSERT INTO resposta(numQuestao,desResposta) values(9,"DELETE FROM professor WHERE codigo and  sexo = 'F';");
INSERT INTO resposta(numQuestao,desResposta) values(10,"SELECT alunos.nome, alunos.matricula FROM alunos;");
INSERT INTO resposta(numQuestao,desResposta) values(11,"SELECT professor.nome, professor.sexo FROM professor WHERE sexo = 'M';");
INSERT INTO resposta(numQuestao,desResposta) values(12,"SELECT alunos.nome, curso.descricao FROM alunos,curso;");
INSERT INTO resposta(numQuestao,desResposta) values(13,"CREATE TABLE estado( UF VARCHAR(2) PRIMARY KEY, nomeEstado VARCHAR(50) );  CREATE TABLE cidade( nomeCidade VARCHAR(80), UFcidade VARCHAR(2), FOREIGN KEY estado_fk_cidade(UFcidade) REFERENCES estado(UF) on update no action);");
INSERT INTO resposta(numQuestao,desResposta) values(14,"SELECT *FROM cidade WHERE nomeCidade LIKE \"A%\";");
INSERT INTO resposta(numQuestao,desResposta) values(15,"SELECT *FROM cidade WHERE UFcidade = \"MG\";");
INSERT INTO resposta(numQuestao,desResposta) values(16,"SELECT cidade.nomeCidade, estado.nomeEstado FROM cidade, estado WHERE UFcidade = UF ORDER BY nomeCidade ASC;");
INSERT INTO resposta(numQuestao,desResposta) values(17,"SELECT  lower(nomeCidade) FROM cidade; ");
INSERT INTO resposta(numQuestao,desResposta) values(18,"SELECT  upper(nomeCidade) FROM cidade; ");
INSERT INTO resposta(numQuestao,desResposta) values(19,"SELECT  count(nomeCidade) as QtdCidadeEstado, nomeEstado as estado FROM cidade, estado WHERE estado.UF = cidade.UFcidade group by cidade.UFcidade; ");