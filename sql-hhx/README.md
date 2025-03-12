# Øvelser med SQL
Introduktion til SQL med [DB Fiddle - SQL Database Playground](https://www.db-fiddle.com).

Disse øvelser viser dig eksempler på brug af almindeligste SQL-kommandoer.
Der er primært fire slags:  
- SELECT (læs data)
- UPDATE (opdater data)
- DELETE (slet data)
- INSERT (opret eller indsæt data)

## Materiale
Denne mappe indeholder følgende filer:

- [1. webshop.sql](webshop.sql)
- [2. examples.sql](examples.sql)
- [3. solutions.md](solutions.md)
- [4. exercises.md](exercises.md)

Læs mere om hver fil nederst.

## Øvelse: sådan gør du
Øvelserne foregår på Db Fiddle. 

Der er to kolonner i vinduet: Schema SQL og Query SQL.  
**Schema SQL**: her opretter vi vores tabeller og vores testdata.  
**Query SQL**: her kører vi vores forespørgsler.

### 1. Opret testdata
Gå til https://www.db-fiddle.com

Kopier koden fra [webshop.sql](webshop.sql) ind i **Schema SQL** og tryk RUN.
Lad derefter denne kode være. 

### 2. Afprøv eksempler
Afprøv eksempler fra [examples.sql](examples.sql) i **Query SQL**.

Afprøv de forskellige eksempler - `SELECT`, `DELETE`, `UPDATE`, `INSERT INTO` - i **Query SQL**.

For at se resultaterne af dine queries, kan du køre en `SELECT` bagefter.

### 3. Lav øvelserne
Lav øvelserne i [exercises.md](exercises.md).

Brug vinduet **Query SQL**.


## Fil: Webshop
Denne fil indeholder den SQL-kode som opretter de tabeller som I skal bruge til øvelsen.
Samtidig indsætter den testdata i tabellerne.

Den opretter tabellerne
- Kunde
- Produkt
- Ordre

og indsætter data: 
- 3 kunder
- 5 produkter
- 4 ordrer

## Fil: Queries (forespørgsler)
Denne fil viser nogle eksempler på SQL-queries.
Den indeholder fire slags eksempler: SELECT, UPDATE, DELETE, INSERT.

Derudover viser den eksempler på WHERE (filtrering) og ORDER BY (sortering).

Der er måske også et enkelt eksempel på JOIN (kombinering af data fra forskellige tabeller).

Kopier eksemplerne til vinduet "Query SQL" i højre side.
Tryk "> RUN" for at se resultaterne.
Det er nemmest at overskue hvis man kun kører en query ad gangen.

## Fil: Exercises
Denne fil indeholder de øvelser som du skal gennemføre.

## Fil: Solutions 
Denne fil indeholder løsninger. Brug den kun hvis du er gået i stå.


