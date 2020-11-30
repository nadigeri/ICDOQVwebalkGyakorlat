use factory;
create table termekek(
	tkod int primary key,
    nev varchar(50) not null,
    ear int check (ear>0),
    kategoria char(20)
);
insert into termekek values(1, 'lapat', 2000, 'k1');
insert into termekek values(2, 'szappan', 100, 'k2');
insert into termekek values(3, 'sepru', 400, 'k1');
insert into termekek values(4, 'pohar', 2400, 'k3');
insert into termekek values(5, 'mosogato gel', 1500, 'k2');
