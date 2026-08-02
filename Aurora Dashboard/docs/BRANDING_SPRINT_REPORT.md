# Aurora Branding Sprint — voortgangsrapport

> Historisch implementatierapport. Voor de actuele publieke status gelden
> `README.md`, `AURORA_DESIGN_SYSTEM.md` en `docs/OPEN_SOURCE_READINESS.md`.

## Fasestatus

- Fase A — Audit en designreview: afgerond op basis van de actieve Storage Mode-audit en projectdocumentatie.
- Fase A — Mock-ups: afgerond voor desktop, tablet en mobiel.
- Fase B — Design System, Branding Guide en UI Style Guide: afgerond.
- Fase C — Live implementatie: afgerond voor ondersteunde viewachtergronden, consistente Sections-instelling en Hero Cards.
- Fase D — Live quality check, responsive screenshots en GitHub-documentatie: afgerond.

## Audit

De actieve Aurora-configuratie gebruikt zeven Sections View-pagina's: Home, Verlichting, Woonkamer, Klimaat, Energie, Media en Camera's. De functionele basis is sterk, maar de visuele laag is nog niet centraal georganiseerd.

Belangrijkste bevindingen:

- 53 Mushroom Cards, 8 Bubble Cards en 1 ApexCharts Card vormen een bruikbare basis.
- Bubble Cards worden in Storage Mode breder gebruikt dan de nieuwe regel “alleen navigatie”.
- Themes zijn niet consistent: Home en Verlichting gebruiken `ios-dark-mode`; andere views missen een uniforme centrale theme-keuze.
- Er zijn geen aantoonbare centrale viewachtergronden en geen actief `card-mod`-gebruik.
- Spacing, card sizing en icongebruik variëren per view.
- Oude woonkamer-entiteiten komen nog voor in Storage Mode: `switch.woonkamer_wandlamp` en `switch.wcd_lamp_woonkamer`.
- `sensor.meterkast_p1_meter_netimport_vandaag` is gedocumenteerd maar mogelijk ongebruikt.
- Herhaald gebruik van energie-, licht- en media-entiteiten is grotendeels functioneel bedoeld voor overzicht en detail; dit is niet automatisch een duplicatiefout.
- Tijdens de audit ontbrak het definitieve Aurora-logo nog; het goedgekeurde transparante bronbestand is later in de sprint toegevoegd.

## Scores vóór implementatie

| View | Score | Kernpunt |
|---|---:|---|
| Home | 7,5/10 | Sterke inhoud, gemengde kaarttaal en oude basisstijl. |
| Verlichting | 8,2/10 | Goede Mushroom-basis; hiërarchie kan consistenter. |
| Woonkamer | 7,6/10 | Functioneel helder; oude entityverwijzingen vragen controle. |
| Klimaat | 7,2/10 | Compact en functioneel, maar visueel generiek. |
| Energie | 8,3/10 | Rijkste pagina; vraagt uniforme grafiek- en spacingtokens. |
| Media | 8,0/10 | Goede kaartkeuze; statusherhaling is visueel zwaar. |
| Camera's | 7,8/10 | Rustige basis; branding mag camerabeeld nooit overlappen. |

## Design review

Gekozen concept: **Modern Premium**.

Sterke punten:

- Sluit aan op Home Assistant zonder de interface onherkenbaar te maken.
- Geeft iedere view identiteit met één gecontroleerd accent.
- Is haalbaar met een centraal theme en beperkte Storage Mode-opmaak.
- Behoudt leesbaarheid en prestaties beter dan intensief glassmorphism of animaties.

Aandachtspunten:

- Glassmorphism verschilt per kaart en frontendversie; gebruik een transparante fallback.
- Een watermerk vereist eerst het echte logo als lokaal gehoste asset.
- View-specifieke gradients moeten in de actieve Storage-configuratie worden getest.
- Geen styling implementeren via een parallel YAML-dashboard.

## Mock-ups

De oorspronkelijke mock-ups zijn niet in de publieke repository opgenomen, omdat zij
informatie uit een persoonlijke Home Assistant-omgeving konden tonen.

## Fase C — uitgevoerde implementatie

De wijzigingen zijn uitsluitend via de actieve, ingelogde Home Assistant Storage Mode-editor uitgevoerd:

- Alle zeven views gebruiken `max_columns: 2`.
- Alle zeven views gebruiken het reeds aanwezige `ios-dark-mode` theme.
- Iedere view heeft een eigen lichte Aurora-gradient op basis van het officiële kleurenpalet.
- Iedere view heeft een compacte Markdown Hero Card.
- Het goedgekeurde Aurora-logo is als geoptimaliseerd 8%-watermerk aan alle zeven viewachtergronden toegevoegd.
- De watermerkposities volgen de Branding Guide: gecentreerd op Home en per view op een rustige, inhoudsvrije positie.
- Home gebruikt een lokaal ingestelde, gepersonaliseerde begroeting.
- Alle bestaande kaarten, entiteiten, acties en navigatie zijn behouden.

Niet geïmplementeerd:

- Extra glassmorphism via `card-mod` is niet toegevoegd, omdat `card-mod` niet actief in het dashboard wordt gebruikt en nieuwe afhankelijkheden niet zonder verificatie worden ingevoerd.

Alle zeven views laden na de wijziging zonder configuratiefout en tonen de verwachte Hero Card.

## Fase D — eindcontrole

- Zeven views gecontroleerd op desktop, tablet en telefoon.
- De tijdens ontwikkeling gemaakte screenshots zijn bewust niet gepubliceerd.
- Geen configuratiefouten of inhoudelijke horizontale overflow gevonden.
- Het logo-watermerk is op alle 21 responsive combinaties gecontroleerd.
- Geen browserconsole-errors gevonden.
- Drie bestaande Media-entiteiten rapporteerden `unavailable`.
- Twee bestaande frontendwaarschuwingen zijn gedocumenteerd.
- Volledige resultaten: `docs/QUALITY_REPORT.md`.
- Screenshotindex: `docs/SCREENSHOTS.md`.
