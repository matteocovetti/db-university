create database `db-university`

use `db-university`

create table dipartimenti(
	id INT not null auto_increment,
	nome_dipartimento VARCHAR(255),
	primary key (id)
);

create table corsi_di_laurea(
	id INT not null auto_increment,
	nome_corso_di_laurea VARCHAR(255) not null,
	descrizione TEXT,
	primary key(id)
);

create table insegnanti(
	id INT not null auto_increment,
	nome VARCHAR(255) not null,
	cognome VARCHAR(255) not null,
	email VARCHAR(255) not null,
	data_di_nascita DATE,
	primary key(id)
);

create table corsi(
	id INT not null auto_increment,
	nome_corso VARCHAR(255) not null,
	cfu INT not null,
	primary key(id)
);

create table studente(
	id INT not null auto_increment,
	nome VARCHAR(255) not null,
	cognome VARCHAR(255) not null,
	matricola VARCHAR(255) not null,
	email VARCHAR(255) not null,
	data_di_nascita DATE,
	primary key(id)
);

alter table corsi_di_laurea add column dipartimenti_id INT;
alter table corsi_di_laurea  add foreign key(dipartimenti_id) references dipartimenti(id);

INSERT INTO dipartimenti
(nome_dipartimento)
VALUES('Matematica');

INSERT INTO corsi_di_laurea
(nome_corso_di_laurea, descrizione, dipartimenti_id)
VALUES('Informatica', 'Corso di informatica', 1);

INSERT INTO insegnanti
(nome, cognome, email, data_di_nascita)
VALUES('Pinco', 'Pallo', 'pincopallo@gmail.com', '1971-09-16');

INSERT INTO corsi
(nome_corso, cfu)
VALUES('Algebra', 9);

INSERT INTO studente
(nome, cognome, matricola, email, data_di_nascita)
VALUES('Matteo', 'Covetti', 'ASD254FEDS', 'matteocovetti@email.com', '1996-03-18');

select * from dipartimenti;
select * from corsi_di_laurea;
select * from insegnanti;
select * from corsi;
select * from studente;

