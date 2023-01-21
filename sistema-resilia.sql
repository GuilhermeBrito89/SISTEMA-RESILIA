create database sistema_resilia;

create table curso(
id_curso int not null primary key auto_increment,
nome_curso varchar(30) not null
);

create table turma (
id_turma int not null primary key auto_increment
);

create table alunos (
id_aluno int not null auto_increment primary key,
matricula_aluno varchar(50) not null ,
cpf varchar(11) not null,
telefone int not null,
email varchar(30) not null,
endereco varchar(60) not null
);

create table facilitador(
id_facilitador int not null primary key auto_increment,
cpf varchar(11) not null,
nome varchar(30) not null,
endereco varchar(60) not null
);

create table disciplina(
id_disciplina int not null primary key auto_increment,
nome_disciplina varchar(40) not null,
materias varchar(40) not null
);

create table avaliacoes(
id_avaliacao int not null primary key auto_increment
);

alter table curso
add id_turma integer,
add constraint fk_id_turma foreign key (id_turma) references turma (id_turma);

alter table turma
add id_facilitador integer,
add constraint fk_id_facilitador foreign key (id_facilitador) references facilitador (id_facilitador);

alter table turma
add id_aluno integer,
add constraint fk_id_aluno foreign key (id_aluno) references alunos (id_aluno);

alter table facilitador
add id_disciplina integer,
add constraint fk_id_disciplina foreign key (id_disciplina) references disciplina(id_disciplina);

alter table disciplina
add id_avaliacao integer,
add constraint fk_id_avaliacao foreign key (id_avaliacao) references avaliacoes (id_avaliacao);

alter table turma
add id_avaliacao int not null,
add constraint fkey_id_avaliacao foreign key(id_avaliacao) references avaliacoes (id_avaliacao);

ALTER TABLE ALUNOS
ADD nome varchar(50) not null







