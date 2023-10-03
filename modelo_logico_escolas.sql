create database escola;

use escola;

create table escolas (
EscolaId int auto_increment primary key,
NomeEscola varchar(255),
Endereco varchar(45) unique not null,
Telefone varchar(45) not null
);

insert into escolas (EscolaID,NomeEscola,Endereco,Telefone) values 
("1","São José", "Bonfim", "(71) 99123-3456"),
("2","Arte", "Henrique Dias", "(71) 99123-3455"),
("3","Península", "Lelis Piedade", "(71) 99123-3453"),
("4","Analíse", "Dendezeiros", "(71) 99123-3454"),
("5","Adventista", "Caminho de Areia", "(71) 99123-3452");

create table alunos (
Matricula int auto_increment primary key,
NomeAluno varchar(255),
DataNascimento date not null,
Endereco varchar(45) unique not null,
Telefone varchar(45) not null,
EscolaID int,
Foreign Key (EscolaID) references Escolas (EscolaID)
);

insert into alunos (Matricula,NomeAluno,DataNascimento,Endereco,Telefone) values
("1","Gabriel","2003-04-03","Ribeira","(71) 99224-8464"),
("2","Matheus","2003-05-03","Caminho de Areia","(71) 99224-8463"),
("3","Riquelme","2003-06-03","Uruguai","(71) 99224-8462"),
("4","Denilson","2003-07-03","Lobato","(71) 99224-8461"),
("5","Raul","2003-08-03","Valeria","(71) 99224-8466");

select * from escolas;
