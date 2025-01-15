# Forløb 2: App-udvikling

_Faglige mål for appudvikling_  
> Konstruktion af it-system som løsning til en problemstilling.  
Eleverne skal kunne  
̶  løse et mindre problem ved at beskrive problemet, samt designe, realisere og afprøve et it-system gennem
brugerorienterede teknikker  
̶  behandle problemstillinger i samspil med andre fag  
̶  demonstrere viden om fagets identitet og metoder


## 2.1 Programmering
_Faglige mål for programmering_
> Eleverne skal kunne identificere basale strukturer i programmeringssprog, modellere programmer og anvende programmering til udvikling af simple it-systemer

_Kernestof_
>    ̶ funktioner  
    ̶ variable, sekvenser, løkker og forgreninger


### Variabler
En variabel har et __navn__ og en __værdi__.
```
var name = "Peter";
var age = 10;
```
Her hedder variablerne _name_ og _age_, og de har værdierne _10_ og _Peter_.
Variable har en datatype. Almindelige datatyper tekst (strenge), heltal, sandt/falsk (boolsk), kommatal (float).

### Gentagelse: for-loop.
``` javascript
for (i = 0; i <= n; i ++;) {
    // do something
}
```
### Gentagelse: while-loop.
While-loop (python)
``` python
while x == true:
    do something;
```
### Betingelser (eksempel: python).
``` python
# if-betingelse
if status == "ok":
    print('Alt er godt.')
# if-else-betingelse
if status == "ok":
    print('Alt er godt.')
else:
    print('Noget er galt.')
# if-elseif-else-betingelser
if status == "ok":
    print('Alt er godt.')
elseif status == "pending":
    print('Vi venter stadig.')
else 
    print('Noget er galt.')
```

### Funktioner
Funktioner tjener _generalisering_ og _abstraktion_ via _parametrisering_.
``` js
function add(n1, n2) {
    return n1 + n2;
}
```

### Referencer
[Erhvervsinformatik til EUD/EUX](https://erhvervsinformatik.systime.dk/)  
- [Sekvenser og variabler](https://erhvervsinformatik.systime.dk/?id=166)
- [Betingelser](https://erhvervsinformatik.systime.dk/?id=167)
- [Gentagelser](https://erhvervsinformatik.systime.dk/?id=169)
- [Funktioner og kommentarer](https://erhvervsinformatik.systime.dk/?id=168)

## 2.2 Blokprogrammering
### Introduktion til AppLab
Video: [Sådan laves MyApp](https://youtu.be/HVJiEHfIl58)
### Øvelse i Applap: valutaomregner

### Referencer
Valutaapp-øvelse og video:
https://youtu.be/HVJiEHfIl58


## 2.3 Interaktionsdesign
### Interaktionsdesign

Faglige mål for interaktionsdesign: 
> Eleverne skal kunne redegøre for udvalgte elementer i et interaktionsdesign, samt realisere udvalgte  interaktionsdesign i et konkret it-system og tilpasse eksisterende design og systemer

#### 2.3.1 Norman  
    Affordance  
    Visibility  
    Constraints  
    Consistency  
    Mapping  
    Feedback  

&rarr; Artikel om Norman: https://medium.com/@sachinrekhi/don-normans-principles-of-interaction-design-51025a2c0f33


#### 2.3.2 Gestalt-love
    Nærhed
    Lighed
    Indramning (closure)
    Forbundethed
    Forgrund/baggrund

#### 2.3.3 Usability
På dansk hedder det brugervenlighed. Lærebogen opstiller fem regler:  

    Useful (brugbar)  
    Effective (virksomt)  
    Efficient (effektivt)  
    Learnable (til at lære)  
    Satisfiable (tilfredsstillende)  

#### 2.3.4 Jacob Nielsen
https://informatikbeux.systime.dk/?id=1080

Jacob Nielsens 10 Usability Heuristics (principper for usability):
1. Visibility of System Status
2. Match Between the System and the Real World
3. User Control and Freedom
4. Consistency and Standards
5. Error Prevention
6. Recognition Rather than Recall
7. Flexibility and Efficiency of Use
8. Aesthetic and Minimalist Design
9. Help Users Recognize, Diagnose, and Recover from Errors
10. Help and Documentation

Jacob Nielsen, kilden: https://www.nngroup.com/articles/ten-usability-heuristics/  
Lærebog Ux Design: https://uxdesign.systime.dk/?id=140

#### 2.3.5 Andre tommelfingerregler for designere
    Recognition over recall
    Don't Make Me Think
    First Things First 
    KISS

Overdriv ikke brugen af disse regler - man kan fx ikke designe udelukkende ved brug af "KISS og lidt gestalt".

#### Referencer
Hvad man ikke skal gøre: https://userinyerface.com

### Kommunikation og målgruppper
Kommunikationsmodeller er vel sagtens ikke en del af pensum for informatik. 
De er anført her fordi de refereres i lærebogen, og fordi de tematisk læner sig
op af de metoder som man anvender i en målgruppeanalyse.


#### Laswells Kommunikationsmodel
En-vejs-kommunikation, ingen tilbgemeldinger fra brugeren, velegnet til "kampagner".
> hvem &rarr; siger hvad &rarr; gennem hvilken kanal &rarr; til hvem &rarr; med hvilken effekt
#### AIDA og LEAP
Led brugeren frem til køb:  
> Attention &rarr; Interest &rarr; Desire &rarr; Action

Forældet i den digitale tidsalder - nu foretrækker man LEAP.

Listen &rarr; Engage &rarr; Action &rarr; Pass It On

#### Minerva
Akser: moderne - materialistisk - traditionel - idealistisk  

De fire segmenter
> blå (NV) &rarr; Individualitet (moderne/materialistisk)  
rosa (SV) &rarr; Tradition (traditionel/materialistisk)  
grønt (NØ) &rarr; Solidaritet (moderne/idealistisk)  
violet (SØ) &rarr; Egenhændighed (traditionel/idealistisk  

I midten, i den grå cirkel, findes "de rådvilde."

https://informatik.systime.dk/?id=983

#### Gallup Kompas
Otte segmenter:  
> moderne
moderne-individorienterede  
individorienterede  
traditionelle-individorienterede  
traditionelle  
traditionelle-fællesskabsorienterede  
fællesskabsorienterede  
moderne-fællesskabsorienterede  

https://informatik.systime.dk/?id=982

#### Conzoom
Ni segmenter, baseret på bopæl og data fra Danmarks statistik.

https://informatik.systime.dk/?id=983

#### Maslow behovspyramide
Psykolog Abraham Maslow opstillede i 1954 de menneskelige behov i en pyramide:
> basale behov &rarr; sociale behov &rarr; selvrealisering

### Referencer
Eksempel på en omfattende designanalyse: https://uxmag.com/articles/a-ux-ui-case-study-on-spotify

Pers forløb: https://pfj.slotshaven.it/3-webteknologier/3-systemudvikling/

Informatik: "Målgrupper" &rarr; https://informatik.systime.dk/?id=982 (systime)


## 2.4 Iterativ udvikling, prototyping

### Den iterative udviklingsmodel
### Prototyper: low-fi og hi-fi, papirskitser
### Use-cases, brugerrejser
### Testmetoder

## 2.5 Wordpress
### Hvad er et CMS-system?

### Installation 
### Opsætning: indlæg, sider, plugins, menuer, medier
### Min første webside!

### Referencer
[Wordpress-installation](https://informatik.slotshaven.it/wordpress/wordpress-installation/)
[Min Wordpress](https://x24-mkm.slotshaven.it/wordpress/)





[Tilbage til oversigt](0-studieplan-hhx.md)