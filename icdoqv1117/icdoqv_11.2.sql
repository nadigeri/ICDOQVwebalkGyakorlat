select tipus, avg(ar), max(ar)-min(ar) from tanfolyam group by tipus;

select megnevezes, case when ar > 100000 then 'draga' else 'olcso' end arkategoria from termek;

create view tdb as select max(t.megnevezes) nev, count(*)db from tanfolyam t inner join befizetes b on b.kurzus = t.tkod group by t.tkod;

select nev, case when db<10 then 'nepszeru' else 'nem nepszeru' end letszam from tdb;