select tipus, count(*) db from tanfolyam group by tipus;
select kurzus, count(*) db from befizetes b group by kurzus;
select t.nev, count(*) db from befizetes b inner join tanfolyam t on b.kurzus = t.tkod;
select t.nev, count(*) db from befizetes b inner join tanfolyam t on b.kurzus = t.tkod where b.befizetes = t.ar;
select r.lakcim, count(*) db from befizetes b inner join resztvevo r on b.diak = r.tajszam where b.kurzus in (select tkor from tanfolyam where megnevezes = 'X');