1. Średnia wypłata zawodników w każdym klubie

SELECT nazwa_klubu, AVG(wyplata) AS srednia_wyplata
FROM zawodnicy
GROUP BY nazwa_klubu;

=========================================================

2. Suma budżetów wszystkich drużyn

SELECT SUM(budzet) AS suma_budzetow
FROM druzyny;

=========================================================

3. Liczba zawodników w każdej drużynie

SELECT nazwa_klubu, COUNT(*) AS liczba_zawodnikow
FROM zawodnicy
GROUP BY nazwa_klubu;

=========================================================

4. Łączenie zawodników z ich menadżerami i obliczanie średniej wypłaty zawodników zarządzanych przez każdego menadżera

SELECT m.imie || ' ' || m.nazwisko AS menadzer, AVG(z.wyplata) AS srednia_wyplata
FROM menadzerowie m
JOIN zawodnicy z ON m.id_menadzera = z.id_menadzera
GROUP BY m.imie, m.nazwisko;


=========================================================

5. Liczba mistrzostw zdobytych przez drużyny w każdej lokalizacji

SELECT lokalizacja, SUM(ilosc_mistrzostw) AS liczba_mistrzostw
FROM druzyny
GROUP BY lokalizacja;

=========================================================
