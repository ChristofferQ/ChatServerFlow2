## Quick Start Project for the Chat - Server

Simple Maven Project which can be used for the Chat-CA 

Using this project as your start code will make deploying your server (the jar-file) to Digital Ocean a "no brainer" if you follow the instructions given here

https://docs.google.com/document/d/1aE1MlsTAAYksCPpI4YZu-I_uLYqZssoobsmA-GHmiHk/edit?usp=sharing 

# Flow2Chat Team Log

**Dag 1 (Mandag d. 08-03-2021)**

Vi har opdelt projektet i de fire "emner" der kræves for at chatseveren virker (Connect, Message, Close og Online). Har aftalt at arbejde på vores eget emne individuelt første dag og samle op i morgen, hvor vi entan kan hjælpe hinanden med eventuelle problemer eller spørge vejlederene om hjælp. 

**Christoffer - Message**
Har "leget" med et eksempel der benytter BufferedReader (InputStream/OutputStream) til at modtage en besked via en konsol og sender beskeden tilbage til samme bruger. Skal finde en løsning der i stedet sender beskeden fra én bruger til en anden gennem severen. Har ikke helt fornemmelse af SEND# kommandoen, som beskrevet i opgaven, og skal hente hjælp til dette.
Pt. virker koden ikke med den eksisterende kode i Main, så dette skal også flettes sammen med connect delen af opgaven.

**Andreas - Connect**
Har kigget på en connect-funktion for klienterne så de kan forbinde til serveren og anvende serverens funktioner. Indtil videre er connect-metoden skrevet som en basal TCP-forbindelse, som kun kan tage en klient af gangen. Skal kigge på threads så der kan være flere klienter på samme tid.

**August - Close**
Har påbegyndt arbejdet der lukker serveren ved kommandoen CLOSE# - det virker men den kaster ikke den exception jeg gerne vil have den til endnu.  Derudover mangler der på nuværende tidspunkt både en client klasse og client handler så der har ikke været noget sted at kalde socket.close();
Til sidst er forarbejdet lavet til ikke at lukke når den modtager CONNECT# og SEND#

**Mathias - Online**
Har lavet en string, hvor der bliver tilføjet navne i et loop af aktive klienter (online brugere) "ONLINE#navn1,navn2". Efter denne string er bygget, sendes den til alle de ovennævne aktive klienter via message metoden.

**Dag 2 (Tirsdag d. 09-03-2021)**
Efter konsultation med Lars har vi været nødt til at starte "forfra" uden brug af git, da det var mere til forvirring end gavn. Vi har brugt dagen på at lave videre på opgaven, men har svært ved at få det til at fungere. Det har været fælleskode, så ikke noget individuelt arbejde at notere i dag. 

**Dag 3 (Onsdag d. 10-03-2021)**
Lars har hjulpet os med at lægge en ny "start kode" ud, som vi har arbejdet videre på. Vi har nu et chat program med alle funktioner der virker lokalt. I morgen vil vi sørge for at det virker med Dropletten og forhåbentlig kalde det en succes. 

**Dag 4 (Torsdag d. 11-03-2021)**
Vi havde problemer i går med at få serveren til at fungere, men med et hurtigt fix fra Lars er den nu oppe at køre og vi har testet, at den fungererer korrekt (altså efter vores kode). Vi har gennemgået koden fælles for at sikre en fælles forståelse og diskuteret eventuelle fremtidige ændringer. 
Vi mødes i morgen til en dejlig dag med Lars. 
