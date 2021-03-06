use beadando;
select nev from jatek where mufajnev='sport';

select kiadonev from kiado where szekhely like'%USA%';

select nev, email from igazgato inner join kiado on kiado.I_id = igazgato.I_id where kiadonev = 'Activision';

select nev, telszam from igazgato inner join kiado on kiado.I_id = igazgato.I_id where alapitva < 1990;

select boltnev from bolt group by boltnev;

select count(*) from jatek where ar < 10000; 

select avg(ar) from jatek where ar < 10000;

select vasarlo from vevo_vasarlo inner join vevo on vevo.V_id = vevo_vasarlo.V_id inner join jatek on  vevo.V_id = jatek.V_id where nev like '%Call of Duty%';

select nev from jatek where ar > (select avg(ar) from jatek);

select vasarlo, sum(ar) as 'vasarlasi osszeg' from vevo_vasarlo inner join vevo on vevo.V_id = vevo_vasarlo.V_id inner join jatek on vevo.V_id = jatek.V_id group by vasarlo;