# Veelgestelde vragen

## Is Aurora een aparte Home Assistant-integratie?

Nee. Aurora is een modulair theme, een dashboardontwerp en een verzameling
herbruikbare componentregels voor Home Assistant.

## Werkt Aurora in YAML Mode?

De publieke styling kan los worden gebruikt, maar de Aurora-dashboardarchitectuur
gebruikt Storage Mode als enige bron van waarheid. Een parallel volledig
YAML-dashboard wordt niet ondersteund.

## Kan ik alleen het theme gebruiken?

Ja. Installeer uitsluitend `themes/aurora.yaml`. De Dashboard-, Components- en
Effects-pakketten zijn optioneel en staan beschreven in
`docs/MODULAR_STYLING.md`.

## Moet ik dezelfde apparatuur hebben?

Nee. Gebruik alleen views en kaarten waarvoor jouw installatie entiteiten heeft.
De bestanden `entities.md` en `helpers.md` beschrijven de referentie-installatie,
niet universele entity-ID’s.

## Waarom ontbreekt een volledige één-klik-dashboardimport?

Een Storage Mode-export bevat installatiegebonden entity-ID’s en kan privédata
bevatten. Aurora publiceert pas een importbundle wanneer deze volledig
geanonimiseerd en parametriseerbaar is.

## Zijn Mushroom, Bubble Card, ApexCharts en card-mod verplicht?

Mushroom en card-mod worden voor de volledige ervaring gebruikt. Bubble Card is
nodig voor Aurora-navigatie. ApexCharts is alleen vereist voor de Energie-view.

## Kan ik eigen apparaatafbeeldingen gebruiken?

Ja. Plaats alleen afbeeldingen waarvoor je gebruiksrechten hebt in de optionele
assetmappen en kopieer ze naar `/config/www/aurora/`. Fabrikantafbeeldingen
worden niet door Aurora meegeleverd.

## Waarom is een apparaat `unavailable`?

Meestal is het apparaat, de integratie of het netwerk tijdelijk offline. Aurora
verandert de beschikbaarheidsstatus niet.

## Waarom heeft een grafiek geen data?

Controleer of de sensor numeriek is, de juiste eenheid en device class heeft en
langetermijnstatistieken ondersteunt. Nieuwe sensoren moeten eerst historie
opbouwen.

## Kan Aurora als standaarddashboard openen?

Ja. Stel Aurora per gebruiker als standaarddashboard in. Zie
`docs/AURORA_PRIMARY_UI.md`. Kioskgedrag is optioneel en apparaatgebonden.

## Mag ik Aurora aanpassen en publiceren?

Ja, onder de voorwaarden van de MIT-licentie. Externe merken, apparaatfoto’s en
persoonlijke Home Assistant-data vallen niet automatisch onder die licentie.
