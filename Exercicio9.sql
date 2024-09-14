drop database atividade9;
create database atividade9;
alter database `atividade9` charset = UTF8 collate = utf8_general_ci;
use atividade9;

create table aeroporto(
	id_aeroporto int(5) primary key auto_increment,
    nome varchar(45),
    cidade varchar(45),
    estado varchar(45),
    pais varchar(45)
);
create table voo(
	id_voo int primary key auto_increment,
    data_partida date,
    hora_partida time,
    data_chegada date,
    hora_chegada time,
    duracao datetime,
    origem int(5),
    constraint foreign key (Origem) references aeroporto (ID_Aeroporto),
    destino int(5),
    constraint foreign key (Destino) references aeroporto (ID_Aeroporto)
);
create table escalas(
	id_voo int,
    constraint foreign key (id_voo) references voo (id_voo),
    escala int (5),
    constraint foreign key (escala) references aeroporto(id_aeroporto)
);
create table passageiro(
	id_passageiro int primary key auto_increment,
    rg varchar(15),
    cpf varchar(15),
    nome varchar(45),
	telefone varchar(15)
);
create table passagem(
	id_passagem int primary key auto_increment,
    data_emissao date,
    data_validade date,
    valor float(5,2),
    id_voo int,
    constraint foreign key (ID_Voo) references voo (ID_Voo),
    id_passageiro int,
    constraint foreign key (ID_Passageiro) references passageiro (ID_Passageiro)
);