create database negyes;
use negyes;
create table termek(
	tkod int primary key,
    nev varchar(50) not null,
    ear int check (ear>0),
    kategoria char(20)
);