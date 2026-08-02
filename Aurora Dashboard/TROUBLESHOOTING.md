# Problemen oplossen

Werk van boven naar beneden en verander steeds maar één ding.

## Theme verschijnt niet

1. Controleer `/config/themes/aurora.yaml`.
2. Controleer dat `frontend: themes: !include_dir_merge_named themes` precies één
   keer in `configuration.yaml` staat.
3. Voer **Configuratie controleren** uit.
4. Herlaad themes of herstart Home Assistant.
5. Selecteer `Aurora` opnieuw in het gebruikersprofiel.

## Achtergrond of logo ontbreekt

- Controleer `/config/www/aurora/aurora-polaris-background.png`.
- Controleer `/config/www/aurora/aurora-logo-v1.png`.
- Open beide bestanden via `/local/aurora/<bestandsnaam>`.
- Voer een harde browserrefresh uit nadat een asset is vervangen.

## Custom kaart ontbreekt

Bij `Custom element doesn't exist`:

1. Controleer HACS → Frontend.
2. Controleer of de resource is geregistreerd.
3. Werk de kaart bij naar een versie die jouw Home Assistant-release ondersteunt.
4. Wis alleen de frontendcache; verwijder geen dashboardconfiguratie.

## Entiteit niet gevonden

Zoek de entity in **Ontwikkelaarstools → Statussen**. Vervang de kaartconfiguratie
alleen door een werkelijk bestaand entity-ID. Maak geen fictieve placeholder.

## `unavailable`

Controleer apparaatvoeding, netwerk, integratiestatus en Home Assistant-logboeken.
Een tijdelijk offline apparaat is geen dashboardconfiguratiefout.

## De app opent toch het dashboard Thuis

Controleer onder **Profiel → Dashboard** of Aurora als standaarddashboard is
gekozen. Deze voorkeur is accountgebonden. De Companion App kan daarnaast de
laatst geopende route herstellen. Open daarom Aurora Home, sluit de app volledig
af en start opnieuw. Blijft de oude route terugkomen, vernieuw dan uitsluitend
de frontendcache of meld één keer af en opnieuw aan.

De volgorde en zichtbaarheid van onderdelen in de zijbalk zijn lokaal per
browser of apparaat. Zet Aurora daarom op iedere telefoon en tablet afzonderlijk
bovenaan via **Profiel → Zijbalk → Bewerken**.

## ApexCharts toont geen historie

- Controleer of Recorder actief is.
- Controleer de sensor in **Ontwikkelaarstools → Statistieken**.
- Gebruik statistische aggregatie alleen voor sensoren die deze ondersteunen.
- Controleer eenheid, state class en numerieke waarden.

## Camera blijft leeg

Controleer de camera-integratie, gebruikersrechten en streamstatus. Test de
entity eerst met een standaard Home Assistant-cameraweergave. Plaats geen blur,
watermerk of decoratieve laag over live video.

## Layout heeft horizontale scroll

Controleer of de view **Secties** gebruikt, vermijd vaste pixelbreedtes en test
op 390 px breedte. Gebruik op mobiel één kolom.

## Polaris-script stopt

Het script stopt bewust wanneer het dashboardbestand, filter of `jq` ontbreekt,
of wanneer de resulterende JSON ongeldig is. Herstel nooit door validatie over
te slaan. Gebruik de gedateerde back-up naast het dashboardbestand.

## Probleem melden

Vermeld Home Assistant-versie, browsertype, betrokken view, kaartversies en een
geanonimiseerde foutmelding. Deel geen tokens, lokale paden, namen, camera-inhoud
of volledige `.storage`-bestanden.
