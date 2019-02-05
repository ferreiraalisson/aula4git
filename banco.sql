-- criando banco de dados

create database aula1;

-- visualizar os bancos existentes

show databases;

-- conectar

use aula1;

-- apagar banco de dados

drop database aula1;

-- criar tabela 

create table usuario(
	COD INT,
	NOME VARCHAR(40),
	LOGIN VARCHAR(40),
	SENHA VARCHAR(40),
	PERFIL ENUM('ADM','USER')
	
);

-- inserir dados na tabela

insert into usuario values (100,'ana','123','lalla','adm');

insert into usuario values (110,'pedro','pedro','1990','user')

insert into usuario values (120,'Ana Carolina','ana',md5('12345'),'adm');	

-- Visualizar dados na tabela

select nome,senha from usuario;
