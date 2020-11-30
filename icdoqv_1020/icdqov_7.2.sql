use factory;
create table gyarto(
	nev varchar(30) not null,
    telephely varchar(200),
    irsz int,
    varos varchar(30),
    utca varchar(100)
);

create table termek(
	tkod int primary key,
    nev varchar(50) not null,
    ear int check (ear>0),
    gyarto int references GYARTO
);

create table alkatresz(
	akod int primary key,
    nev varchar(50) not null
);

create table egysegek(
	aru int references termek,
    db int check (db>0)
);

create table komponens(
	termek int references termek,
    alkatresz int references alkatresz
);