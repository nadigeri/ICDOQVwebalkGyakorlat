select count(*) from termek where ear > (select avg(ear) from termek);
select nev from termek where ear = (select max(ear) from termek);
select nev from gyarto where adoszam in (select gyarto from termek where ear=(select max(ear) from termek));
create view gyatlag as select gy.nev, avg(gy.ear) mear from gyarto t inner join termek t on t.gyarto = gy.adoszam group by gy.nev;
select nev from gyatlag where mear = (select max(mear) from gyatlag);
select gy.nev, avg(t.ear) ear from gyarto gy left outer join termek t on gy.adoszam = t.gyarto group by gy.nev;