/*************************************************
Introduktion til SQL med https://www.db-fiddle.com

Der er tre trin:
1. Opret tabeller og indsæt testdata
2. Lav forespørgsler (queries) for at hente, opdatere, slette og indsætte data
3. Løs opgaverne i opgavearket

Åbn din browser og gå til https://www.db-fiddle.com.
Følg de første to trin for at køre SQL-koden.
Når du har leget lidt med eksemplerne, kan du prøve at løse 
opgaverne i trin 3.

Bemærk! Linjerne med "--" er kommentarer og ignoreres af databasen.
*************************************************/

/******* TRIN 1 ****************************************
Opret tabeller og indsæt testdata.
Kopier denne kode til vinduet "Schema SQL" (venstre side)
********************************************************/

-- Opret tabel "Kunde" med kolonner "KundeID", "Navn" og "Email"
CREATE TABLE Kunde (
    KundeID INTEGER PRIMARY KEY,
    Navn TEXT NOT NULL,
    Email TEXT NOT NULL
);

-- Opret tabel "Produkt" med kolonner "ProduktID", "Model", "Mærke", "Pris" og "Beskrivelse"
CREATE TABLE Produkt (
    ProduktID INTEGER PRIMARY KEY,
    Model TEXT NOT NULL,
    Mærke TEXT NOT NULL,
    Pris DECIMAL(10,2) NOT NULL,
    Beskrivelse TEXT
);

-- Opret tabel Ordre med fremmednøgler til Kunde og Produkt
CREATE TABLE Ordre (
    OrdreID INTEGER PRIMARY KEY,
    KundeID INTEGER,
    ProduktID INTEGER,
    Antal INTEGER NOT NULL,
    FOREIGN KEY (KundeID) REFERENCES Kunde(KundeID),
    FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID)
);

-- Indsæt testdata i Kunde
INSERT INTO Kunde (KundeID, Navn, Email) VALUES
    (1, 'Anders Hansen', 'anders.hansen@example.com'),
    (2, 'Mette Larsen', 'mette.larsen@example.com'),
    (3, 'Jonas Petersen', 'jonas.petersen@example.com');  -- Jonas har ingen ordrer

-- Indsæt testdata i Produkt
INSERT INTO Produkt (ProduktID, Model, Mærke, Pris, Beskrivelse) VALUES
    (1, 'Air Max 90', 'Nike', 999.95, 'Klassisk sneaker med god komfort'),
    (2, 'Ultraboost 22', 'Adidas', 1299.00, 'Løbesko med ekstra stødabsorbering'),
    (3, 'Chuck Taylor All Star', 'Converse', 699.50, 'Tidløs canvas-sneaker'),
    (4, 'Old Skool', 'Vans', 749.00, 'Skate-sko med retrolook'),
    (5, 'Gel-Kayano 28', 'Asics', 1399.00, 'Stabil løbesko til lange distancer');

-- Indsæt testdata i Ordre
INSERT INTO Ordre (OrdreID, KundeID, ProduktID, Antal) VALUES
    (1, 1, 2, 1),  -- Anders køber en Adidas Ultraboost
    (2, 1, 4, 2),  -- Anders køber to par Vans Old Skool
    (3, 2, 1, 1),  -- Mette køber en Nike Air Max 90
    (4, 2, 3, 1);  -- Mette køber en Converse Chuck Taylor

/******* TRIN 2 *********************************************************
Lav en række forespørgsler (queries).
Kopier disse eksempler et af gangen til vinduet "Query SQL" i højre side.
Tryk "> RUN" for at se resultaterne.
*************************************************************************/

-- Eksempel 1. Viser indhold med filtrering med WHERE
SELECT * FROM Kunde;
-- Disse forespørgsler viser specifikke kolonner fra Kunde og Produkt-tabellerne
-- Slet kommentartegnet -- foran en forespørgsel for at køre den
-- SELECT Email FROM Kunde WHERE Navn = 'Anders Hansen';
-- SELECT Model, Pris FROM Produkt WHERE Mærke = 'Nike';
-- SELECT Mærke FROM Produkt WHERE Pris > 1000;
-- SELECT max(OrdreID) from Produkt; -- Finder den højeste ordre-ID
-- SELECT avg(Price) from Produkt; -- Finder gennemsnitsprisen på produkter

/* 
Eksempel 2.
Viser en liste over produkter, som en bestemt kunde har købt
Den bruger JOIN til at kombinere data fra Kunde, Ordre og Produkt-tabellerne
Resultatet inkluderer kundens navn, produktets model, mærke, pris og antal købte enheder
*/
SELECT Kunde.Navn, Produkt.Model, Produkt.Mærke, Produkt.Pris, Ordre.Antal
    FROM Ordre
    JOIN Kunde ON Ordre.KundeID = Kunde.KundeID
    JOIN Produkt ON Ordre.ProduktID = Produkt.ProduktID
    WHERE Kunde.Navn = 'Mette Larsen';

-- Eksempel 3. Opdaterer beskrivelsen af et produkt i Produkt-tabellen
UPDATE Produkt
    SET Beskrivelse = 'Ny forbedret version med bedre sål'
    WHERE ProduktID = 1;  -- Opdaterer Nike Air Max 90
-- SELECT * FROM Produkt;  -- Kør denne forespørgsel for at se ændringerne

-- Eksempel 4. Sletter en kunde fra Kunde-tabellen
DELETE FROM Kunde WHERE KundeID = 3;
-- SELECT * FROM Kunde;  -- Kør denne forespørgsel for at se ændringerne

-- Eksempel 5. Opretter en ny kunde i Kunde-tabellen
INSERT INTO Kunde (KundeID, Navn, Email) VALUES
    (4, 'Sofie Thomsen', 'sofie.thomsen@example.com');
-- SELECT * FROM Kunde;  -- Kør denne forespørgsel for at se ændringerne

