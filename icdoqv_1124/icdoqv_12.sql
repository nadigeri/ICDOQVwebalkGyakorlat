SELECT rendszam, nev FROM auto INNER JOIN tulajdonos ON auto.tulaj=tulajdonos.tkod;

SELECT DISTINCT  szin, kor, ar, tipus FROM auto INNER JOIN tulajdonos ON auto.tulaj=tulajdonos.tkod WHERE varos='Miskolc';

select tipus, ar, knev  from auto  join kategoria on ar >= alsoHP and (ar <= felsoHP or felsoHP is null);

SELECT rendszam, nev FROM auto join tulajdonos ON auto.tulaj=tulajdonos.tkod;