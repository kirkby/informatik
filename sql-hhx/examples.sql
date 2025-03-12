/***********************************************************************
Introduktion til SQL med https://www.db-fiddle.com

Her er en række eksempler på forespørgsler (queries).

Kopier disse eksempler ET AD GANGEN til vinduet "Query SQL" i højre side.
Tryk "> RUN" for at se resultaterne.
*************************************************************************/


/*************************************************************************
* Eksempel: SELECT (læs eller vis data)
*************************************************************************/
-- Viser alle kolonner fra Kunde-tabellen
SELECT * FROM Kunde;

-- Viser kun navn og e-mail fra Kunde-tabellen
SELECT Navn, Email FROM Kunde

-- Viser alle rækker fra Produkt-tabellen, hvor mærket er 'Nike'
SELECT * FROM Produkt WHERE Mærke = 'Nike';

-- Viser mærke og model fra Produkt-tabellen, hvor prisen er over 1000
SELECT Mærke, Model FROM Produkt WHERE Pris > 1000;

/*************************************************************************
* Eksempel: DELETE (slet data)
*************************************************************************/
-- Sletter ordre med ID-nummer 3 fra Ordre-tabellen
-- Tip: Kør en SELECT bagefter for at se ændringerne
DELETE FROM Ordre WHERE OrdreID = 3;

-- Sletter en kunde fra Kunde-tabellen
DELETE FROM Kunde WHERE KundeID = 3;

/*************************************************************************
* UPDATE: Opdatering af data
*************************************************************************/
-- Opdaterer prisen på produkt med ID-nummer 5 i Produkt-tabellen
UPDATE Produkt 
    SET Pris = 1499.00 
    WHERE ProduktID = 5;

-- Opdaterer beskrivelsen af produkt med ID-nummer 1 i Produkt-tabellen
UPDATE Produkt
    SET Beskrivelse = 'Ny forbedret version med bedre sål'
    WHERE ProduktID = 1;  

/*************************************************************************
* INSERT INTO: oprettelse af ny data
*************************************************************************/
-- Opretter en ny kunde i Kunde-tabellen
INSERT INTO Kunde (KundeID, Navn, Email) 
    VALUES (4, 'Sofie Thomsen', 'sofie.thomsen@example.com');

/*************************************************************************
* Eksempel: JOIN (kombinering af tabeller - AVANCERET)
* Viser en liste over produkter, som en bestemt kunde har købt.
* Den bruger JOIN til at kombinere data fra Kunde, Ordre og Produkt-tabellerne
* Resultatet inkluderer kundens navn, produktets model, mærke, pris og 
* antal købte enheder
*************************************************************************/
SELECT Kunde.Navn, Produkt.Model, Produkt.Mærke, Produkt.Pris, Ordre.Antal
    FROM Ordre
    JOIN Kunde ON Ordre.KundeID = Kunde.KundeID
    JOIN Produkt ON Ordre.ProduktID = Produkt.ProduktID
    WHERE Kunde.Navn = 'Mette Larsen';
