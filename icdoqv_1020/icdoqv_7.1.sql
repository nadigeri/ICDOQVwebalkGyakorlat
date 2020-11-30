use factory;
create table gyartok(
	adoszam int primary key,
    nev varchar(30) not null,
    telephely varchar(200)
);

create table termek(
	tkod int primary key,
    nev varchar(50) not null,
    ear int check (ear>0),
    gyarto int references gyarto
    );    