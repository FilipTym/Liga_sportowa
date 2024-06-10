-- Sekwencja dla `id_menadzera` w tabeli `menadzerowie`--

CREATE SEQUENCE seq_id_menadzera
START WITH 1
INCREMENT BY 1
NOCACHE;

--Sekwencja z początkową wartością, przyrostem co 5 oraz wartością cache dla id_zawodnika--

CREATE SEQUENCE seq_id_zawodnika
START WITH 1000
INCREMENT BY 5
CACHE 50;

