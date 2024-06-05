CREATE TABLE druzyny (
    nazwa_klubu      VARCHAR2(50) NOT NULL,
    lokalizacja      VARCHAR2(50) NOT NULL,
    stadion          VARCHAR2(50) NOT NULL,
    budzet           NUMBER,
    ilosc_mistrzostw NUMBER,
    data_powstania   DATE,
    CONSTRAINT druzyny_pk PRIMARY KEY (nazwa_klubu)
);

CREATE TABLE menadzerowie (
    id_menadzera   NUMBER NOT NULL,
    imie           VARCHAR2(50) NOT NULL,
    nazwisko       VARCHAR2(50) NOT NULL,
    nazwa_panstwa  VARCHAR2(50) NOT NULL,
    kod_kraju      VARCHAR2(5) NOT NULL,
    wyplata        NUMBER,
    id_zawodnika   INTEGER,
    numer_telefonu VARCHAR2(50) NOT NULL,
    CONSTRAINT menadzerowie_pk PRIMARY KEY (id_menadzera)
);

CREATE TABLE panstwa (
    nazwa_panstwa VARCHAR2(50) NOT NULL,
    kod_kraju     VARCHAR2(5),
    CONSTRAINT panstwa_pk PRIMARY KEY (nazwa_panstwa)
);

CREATE TABLE pracownicy (
    nazwa_klubu     VARCHAR2(50) NOT NULL,
    imie            VARCHAR2(50) NOT NULL,
    nazwisko        VARCHAR2(50) NOT NULL,
    zawod           VARCHAR2(50) NOT NULL,
    wyplata         NUMBER,
    data_dolaczenia DATE NOT NULL,
    obywatelstwo    VARCHAR2(50),
    kod_kraju       VARCHAR2(5),
    id_pracownika   NUMBER NOT NULL,
    CONSTRAINT pracownicy_pk PRIMARY KEY (id_pracownika)
);

CREATE TABLE sedziowie (
    id_sedziego VARCHAR2(5) NOT NULL,
    imie        VARCHAR2(50) NOT NULL,
    nazwisko    VARCHAR2(50) NOT NULL,
    wyplata     NUMBER,
    ocena       NUMBER,
    stadion     VARCHAR2(50) NOT NULL,
    CONSTRAINT sedziowie_pk PRIMARY KEY (id_sedziego)
);

CREATE TABLE sponsorzy (
    nazwa_firmy   VARCHAR2(50) NOT NULL,
    nazwa_klubu   VARCHAR2(50) NOT NULL,
    budzet        NUMBER,
    nazwa_panstwa VARCHAR2(50),
    CONSTRAINT sponsorzy_pk PRIMARY KEY (nazwa_firmy)
);

CREATE TABLE stadiony (
    nazwa_stadionu VARCHAR2(50) NOT NULL,
    miasto         VARCHAR2(50) NOT NULL,
    nazwa_klubu    VARCHAR2(50) NOT NULL,
    ilosc_miejsc   INTEGER,
    CONSTRAINT stadiony_pk PRIMARY KEY (nazwa_stadionu)
);

CREATE TABLE zawodnicy (
    id_zawodnika   NUMBER NOT NULL,
    imie           VARCHAR2(50) NOT NULL,
    nazwisko       VARCHAR2(50) NOT NULL,
    nazwa_panstwa  VARCHAR2(50) NOT NULL,
    kod_kraju      VARCHAR2(5) NOT NULL,
    wzrost         NUMBER NOT NULL,
    data_ur        DATE NOT NULL,
    nazwa_klubu    VARCHAR2(50) NOT NULL,
    id_menadzera   NUMBER NOT NULL,
    numer_koszulki INTEGER,
    wyplata        NUMBER,
    CONSTRAINT zawodnicy_pk PRIMARY KEY (id_zawodnika)
);

ALTER TABLE menadzerowie
    ADD CONSTRAINT menadzerowie_panstwa_fk FOREIGN KEY (nazwa_panstwa)
        REFERENCES panstwa (nazwa_panstwa);

ALTER TABLE menadzerowie
    ADD CONSTRAINT menadzerowie_panstwa_fkv1 FOREIGN KEY (kod_kraju)
        REFERENCES panstwa (kod_kraju);

ALTER TABLE zawodnicy
    ADD CONSTRAINT zawodnicy_druzyny_fk FOREIGN KEY (nazwa_klubu)
        REFERENCES druzyny (nazwa_klubu);

ALTER TABLE zawodnicy
    ADD CONSTRAINT zawodnicy_menadzerowie_fk FOREIGN KEY (id_menadzera)
        REFERENCES menadzerowie (id_menadzera);

ALTER TABLE zawodnicy
    ADD CONSTRAINT zawodnicy_panstwa_fk FOREIGN KEY (nazwa_panstwa)
        REFERENCES panstwa (nazwa_panstwa);

ALTER TABLE zawodnicy
    ADD CONSTRAINT zawodnicy_panstwa_fkv1 FOREIGN KEY (kod_kraju)
        REFERENCES panstwa (kod_kraju);
