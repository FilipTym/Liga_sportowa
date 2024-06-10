-- Widok średniej wypłaty zawodników w każdym klubie--

CREATE VIEW srednia_wyplata_klub AS
SELECT nazwa_klubu, AVG(wyplata) AS srednia_wyplata
FROM zawodnicy
GROUP BY nazwa_klubu;

-- Widok informacji o menadżerach i ich zawodnikach--

CREATE VIEW menadzerowie_zawodnicy AS
SELECT m.id_menadzera, m.imie || ' ' || m.nazwisko AS menadzer, m.nazwa_panstwa, m.kod_kraju, z.id_zawodnika, z.imie || ' ' || z.nazwisko AS zawodnik, z.nazwa_klubu, z.wyplata
FROM menadzerowie m
JOIN zawodnicy z ON m.id_menadzera = z.id_menadzera;

-- Widok sumy budżetów i liczby mistrzostw drużyn w każdej lokalizacji--

CREATE VIEW budzet_mistrzostwa_lokalizacja AS
SELECT lokalizacja, SUM(budzet) AS suma_budzetow, SUM(ilosc_mistrzostw) AS suma_mistrzostw
FROM druzyny
GROUP BY lokalizacja;
