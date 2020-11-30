create database school;
use school;
create table tanfolyam(
	tkod int primary key,
    ar int,
    tipus varchar(30),
    megnevezes varchar(100)
);
create table resztvevo(
	tajszam char(13) primary key,
    nev varchar(30),
    lakcim varchar(100)
);
create table befizet(
	diak int,
    kurzus int,
    befizet int,
    foreign key (diak) references resztvevo,
    foreign key (kurzus) references tanfolyam
);