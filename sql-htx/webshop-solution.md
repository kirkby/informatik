# Løsning til SQL- opgaverne til onsdag 26/2

## Introduktion
Forsøg at lave disse forespørgsler (queries) for at løse opgaverne.
Test dine forespørgsler ved at kopiere dem til vinduet "Query SQL"
og tryk "> RUN" for at se resultaterne.
Skriv din svar herunder hver opgave og gem i din logbog.

## Opgave 1
Hent alle produkter med en pris under 1000 kr.

Skriv din forespørgsel herunder:
```sql
select * from Produkt where pris > 1000;
```

## Opgave 2
Find alle kunder, der har købt Adidas-produkter.  
Udskriv kun kundens navn og email og skoens model.  

Skriv din forespørgsel herunder:  
```sql
select navn, email, Model, mærke
from Kunde
join 
Ordre on Kunde.KundeId=Ordre.KundeId
join
Produkt on Ordre.ProduktId=Produkt.ProduktId
where Mærke='adidas'
```

## Opgave 3
Opdater prisen på 'Vans Old Skool' til 799.00 kr.  

Tjek at prisen er blevet opdateret ved at køre en SELECT-forespørgsel. 

Skriv din forespørgsel herunder:
```sql
update Produkt set Pris = 799 where ProduktId = 4;
```

## Opgave 4
Slet alle kunder som ikke har nogen ordrer.  
Tjek først kundens ID ved at køre en SELECT-forespørgsel.  
Tjek derefter, om kunden har ordrer i Ordre-tabellen.  
Efter at have slettet kunden, skal du køre en SELECT-forespørgsel.  

Skriv din forespørgsel herunder:

```sql
delete from Kunde where KundeId = 3;
```

## Opgave 5

Tilføj en ny ordre, hvor Sofie Thomsen køber en Asics Gel-Kayano 28 (1 stk).  
Find produktets ID og kundens id ved at køre en SELECT-forespørgsel.  
Find et nyt ordre-ID ved at tælle antallet af rækker i Ordre-tabellen.  
Brug derefter disse ID'er til at indsætte en ny ordre i Ordre-tabellen.  

Skriv din forespørgsel herunder:
```
-- opret kunde Sofie Thomsen hvis hun ikke allerede eksisterer
INSERT INTO Kunde(KundeId, Navn, Email) VALUES (5, 'Sofie Thomsen', 'sofie@mail.com');

-- Tjek hendes KundeId (Sofie har Id 5)
select * from Kunde;

-- Tjek højeste ordreId (5, højeste nummer er 4)
select * from Ordre;

-- Tjek produkt id (Asics har Id 5)
select * from Produkt;

-- OPRET ORDREN 
INSERT INTO Ordre(OrdreId,KundeId,ProduktId,Antal) VALUES (5,5,5,1);

-- Tjek resultat
SELECT Navn, Model, Mærke
FROM Kunde JOIN Ordre on Kunde.KundeId=Ordre.KundeId
JOIN Produkt on Ordre.ProduktId=Produkt.ProduktId
WHERE Navn = 'Sofie Thomsen';
```
