# Løsninger til SQL-opgaverne

Løsninger til øvelserne i [exercises.sql](exercises.sql).

## Øvelse: filtrering

```sql
SELECT * FROM Produkt WHERE Pris > 1000;
```

## Øvelse: sortering
```sql
SELECT * FROM Produkt order by Pris desc;
```

## Øvelse: opdatering af pris
```sql
UPDATE Produkt set Pris = 799 WHERE ProduktId = 4;
```

## Øvelse: Tilføj kunde
```sql
INSERT INTO Kunde(KundeId, Navn, Email)
    VALUES(4, 'Peter Madsen', 'peter@madsen.dk')
```

## Øvelse: slet kunder uden ordrer (GDPR)
```sql
DELETE FROM Kunde WHERE KundeId = 3;
```
## Øvelse: Tilføj ordre
```sql
-- Tjek hendes KundeId (Sofie har Id 5)
SELECT * FROM Kunde;

-- Tjek højeste ordreId (5, højeste nummer er 4)
SELECT * FROM Ordre;

-- Tjek produkt id (Asics har Id 5)
SELECT * FROM Produkt;

-- OPRET ORDREN 
INSERT INTO Ordre(OrdreId,KundeId,ProduktId,Antal) 
    VALUES(5,5,5,1);
```

Tjek resultatet:
```sql 
SELECT Navn, Model, Mærke
FROM Kunde JOIN Ordre on Kunde.KundeId=Ordre.KundeId
JOIN Produkt on Ordre.ProduktId=Produkt.ProduktId
WHERE Navn = 'Sofie Thomsen';
```


## Øvelse (avanceret): JOIN - kombiner tabeller
```sql
SELECT Navn, Email, Model, Mærke
FROM Kunde
JOIN 
Ordre on Kunde.KundeId=Ordre.KundeId
JOIN
Produkt on Ordre.ProduktId=Produkt.ProduktId
WHERE Mærke='adidas';
```