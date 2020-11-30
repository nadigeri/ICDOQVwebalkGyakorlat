alter table alkatresz add (ar int check(ar>0));

select nev from gyarto where adoszam not in (select gyarto from termek);

create view et as select MAX(t.nev) nev, t.tkod, count(*)db from TERMEK t inner join egysegek e on e.aru = t.tkod group by t.tkod;

select nev from et where db = (select MAX(db) from et);