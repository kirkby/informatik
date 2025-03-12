# Øvelser

Konstruér SQL-forespørgsler (queries) der løser opgaverne i disse øvelser.  
Test dine forespørgsler ved at kopiere dem til vinduet "Query SQL" og tryk "> RUN" for at se resultaterne.  
Skriv din svar herunder hver opgave. Gem resultatet i din logbog.  

## Øvelse: filtrering
Hent alle produkter med en pris under 1000 kr.
Brug `WHERE`.

Løsning (SQL):
```sql
.
```

## Øvelse: sortering
Vis alle produkter sorteret efter stigende pris.  
Brug `ORDER BY` og `ASC` eller `DESC`.

Løsning (SQL):
```sql
.
```

## Øvelse: opdatering af pris
Opdater prisen på 'Vans Old Skool' til 799.00 kr.  

Tjek at prisen er blevet opdateret ved at køre en `SELECT`-forespørgsel. 

Løsning (SQL):
```sql
.
```

## Øvelse: Tilføj kunde
Tilføj en ny kunde, Peter Madsen, peter@madsen.dk.  
Find det højeste ID-nummer i kundetabellen og læg en til.  
Giv dette ID til Peter Madsen.  
Brug `INSERT INTO` + `VALUES`(se eksempler) til at indsætte denne kunde i Kunde-tabellen.  

Løsning (SQL):
```sql
.
```

## Øvelse: slet kunder uden ordrer (GDPR)
Slet alle kunder som ikke har nogen ordrer.  
Tjek først alle kunder ved at køre en SELECT-forespørgsel på Kunde-tabellen.
Tjek derefter, hvilke kunder som har ordrer i Ordre-tabellen.  
Slet den kunde som ikke har nogle ordrer.  
Tjek resultatet ved at køre en SELECT-forespørgsel på Kunde-tabellen.  

Løsning (SQL):
```sql
.
```

## Øvelse: Tilføj ordre
Tilføj en ny ordre, hvor Sofie Thomsen køber en Asics Gel-Kayano 28 (1 stk).  
Find produktets ID og kundens id ved at køre en SELECT-forespørgsel.  
Find et nyt ordre-ID ved at tælle antallet af rækker i Ordre-tabellen.  
Brug derefter disse ID'er til at indsætte en ny ordre i Ordre-tabellen.  
Brug `INSERT INTO`.

Løsning (SQL):
```sql
.
```

## Øvelse (avanceret): JOIN - kombiner tabeller
Find alle kunder, der har købt Adidas-produkter.  
Udskriv kun kundens navn og email og skoens model.  

Løsning (SQL):
```sql
.
```
