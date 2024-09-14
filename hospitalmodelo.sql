drop database hospitalmodelo;
create database hospitalmodelo;
use hospitalmodelo;

create table paciente(
CRH varchar(50) not null unique,
id_paciente int not null primary key auto_increment,
nome varchar(50),
endereco varchar(50),
cidade varchar(50),
telefone varchar(50),
sexo varchar(50),
responsavel varchar(50)
);
create table medico(
id_paciente int not null primary key auto_increment,
CRM varchar(50) not null unique,
nome varchar(50),
endereco varchar(50),
cidade varchar(50),
telefone varchar(50),
especialidade varchar(50)
);
create table exames(
id_exame int not null primary key auto_increment,
tipo varchar(50),
descricao varchar(50),
data_realizacao varchar(50),
resultado varchar(50)
);
create table leito(
id_leito int not null primary key auto_increment,
ala varchar(50),
num_quarto varchar(50),
num_leito varchar(50),
tipo varchar(50)
);
create table consulta(
id_consulta int not null primary key auto_increment,
id_paciente int,
id_medico int,
id_exame int,
id_leito int,
constraint fk_paciente foreign key (id_paciente) references paciente(id_paciente),
constraint fk_medico foreign key (id_medico) references medico(id_medico),
constraint fk_exame foreign key (id_exame) references exame(id_exame),
constraint fk_leito foreign key (id_leito) references leito(id_leito)
);
create table prontuario(
id_paciente int,
problema varchar(50),
data_constatacao varchar(50),
receita varchar(50),
cuidados_especiais varchar(50),
constraint fk_paciente foreign key (id_paciente) references paciente(id_paciente)
);

