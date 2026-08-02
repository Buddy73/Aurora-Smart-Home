# Aurora gebruikershandleiding

Aurora is de dagelijkse gebruikersinterface boven op Home Assistant. Home
Assistant blijft beschikbaar voor beheer, configuratie en onderhoud.

## Starten

Open `/dashboard-aurora/home` of stel Aurora via het gebruikersprofiel in als
standaarddashboard. De actieve configuratie gebruikt uitsluitend Storage Mode.

## Navigatie

Aurora bevat acht hoofdviews:

| View | Dagelijks gebruik |
|---|---|
| Home | Weer, tijd, kernstatus, favorieten en snelle acties |
| Verlichting | Groepen, dimmers, schakelaars en scènes |
| Woonkamer | Licht, media, klimaat en rolluiken in één ruimte |
| Klimaat | Nest, airco’s, temperaturen en ondersteunde modi |
| Energie | Live energiebalans, productie, net, gas en historie |
| Media | Actieve spelers en bediening per ruimte |
| Camera’s | Compacte livebeelden en camerastatus |
| Hobby, Garage & Tuin | 3D-printers, werkruimte en tuinapparatuur |

Op desktop blijft de Home Assistant-zijbalk beschikbaar. Op tablet en telefoon
kan deze via de standaard Home Assistant-bediening worden ingeklapt.

## Kaarten bedienen

- Tik op een Mushroom-kaart voor de primaire actie of meer informatie.
- Gebruik een schuifregelaar alleen bij aantoonbaar dimbare verlichting.
- Bubble Cards zijn binnen Aurora uitsluitend bedoeld voor navigatie.
- Grafiekseries in ApexCharts kunnen via de legenda worden verborgen of
  opnieuw getoond.
- Een grijze of neutrale kaart betekent meestal dat het apparaat uit of idle is.

## Klimaat

Wijzig alleen modi die het betreffende climate-apparaat werkelijk ondersteunt.
De beschikbare HVAC-, ventilator-, preset- en swingopties kunnen per installatie
verschillen. Een wijziging kan enkele seconden nodig hebben om op het apparaat
zichtbaar te worden.

## Energie

Live vermogen en cumulatieve energie zijn verschillende meetwaarden. Controleer
bij afwijkingen eerst de bronintegratie. Historische grafieken vereisen dat de
sensor langetermijnstatistieken levert.

## Media en camera’s

Bedieningsknoppen worden alleen getoond wanneer een speler deze ondersteunt.
Camera’s kunnen na openen kort initialiseren. Geef cameratoegang uitsluitend aan
gebruikers die de beelden mogen zien.

## 3D-printers

- Controleer vóór het uitschakelen van printervoeding of geen print actief is.
- Gebruik **Stoppen** uitsluitend wanneer de print echt moet worden beëindigd.
- OctoPrint-bediening is alleen beschikbaar wanneer de officiële integratie
  online is.
- De Elegoo-kaart blijft modulair totdat betrouwbare telemetrie beschikbaar is.

## Statusmeldingen

| Melding | Betekenis |
|---|---|
| Niet beschikbaar | Apparaat of integratie is offline |
| Entiteit niet gevonden | Entity-ID bestaat niet in deze installatie |
| Custom element doesn’t exist | Vereiste frontendkaart ontbreekt of is nog niet geladen |
| Geen statistieken | Sensor ondersteunt de gevraagde historie niet of heeft nog geen data |

## Veilig dagelijks gebruik

- Gebruik woningbrede acties zoals **Alles uit** bewust.
- Controleer rolluiken en zonwering visueel wanneer personen of voorwerpen in de
  bewegingszone kunnen staan.
- Publiceer nooit screenshots met camera-inhoud, namen of actuele woningdata.

Zie [TROUBLESHOOTING.md](TROUBLESHOOTING.md) voor probleemoplossing en
[FAQ.md](FAQ.md) voor veelgestelde vragen.
