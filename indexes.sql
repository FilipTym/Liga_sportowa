1. Indeks na kolumnie nazwa_klubu w tabeli zawodnicy
Indeks ten przyspieszy zapytania wyszukujące zawodników na podstawie nazwy klubu.
  
  CREATE INDEX idx_zawodnicy_nazwa_klubu
ON zawodnicy (nazwa_klubu);

======================================================================================
  
2. Indeks na kolumnie imie i nazwisko w tabeli menadzerowie
Indeks ten przyspieszy zapytania wyszukujące menadżerów na podstawie ich imienia i nazwiska.

CREATE INDEX idx_menadzerowie_imie_nazwisko
ON menadzerowie (imie, nazwisko);
