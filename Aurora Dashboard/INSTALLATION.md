# Aurora installeren

Deze handleiding installeert de openbare Aurora-foundation in ongeveer 10–15
minuten. Aurora gebruikt **Home Assistant Storage Mode** als enige actieve
dashboardbron.

> De repository bevat bewust geen export van een privé-installatie. Het theme,
> de eigen assets en de modulaire styling zijn direct herbruikbaar. Kaarten en
> entity-ID’s moeten altijd aan de eigen Home Assistant-installatie worden
> gekoppeld.

## 1. Vereisten

- Home Assistant Core 2024.4 of nieuwer met Sections View; de nieuwste stabiele
  release wordt aanbevolen.
- Toegang tot `/config`, bijvoorbeeld via Studio Code Server, Samba of SSH.
- HACS.
- Een bestaand of nieuw Storage Mode-dashboard.

Installeer via **HACS → Frontend**:

| Component | Gebruik in Aurora | Vereist |
|---|---|---|
| Mushroom Cards | Primaire kaarten | Ja |
| Bubble Card | Navigatie | Ja |
| ApexCharts Card | Energiegrafieken | Voor Energie |
| card-mod | Gerichte visuele verfijning | Ja |

Herlaad de browser nadat HACS de frontendresources heeft geregistreerd.

## 2. Bestanden kopiëren

Kopieer vanuit deze repository:

```text
Aurora Dashboard/themes/aurora.yaml
    → /config/themes/aurora.yaml

Aurora Dashboard/assets/logo/
    → /config/www/aurora/

Aurora Dashboard/assets/backgrounds/aurora-polaris-background.png
    → /config/www/aurora/aurora-polaris-background.png
```

De mappen `assets/climate`, `assets/media` en `assets/devices` zijn optioneel.
Plaats daar uitsluitend eigen afbeeldingen waarvoor je gebruiksrechten hebt.

## 3. Theme activeren

Voeg dit alleen toe wanneer `frontend:` nog niet in `configuration.yaml` staat:

```yaml
frontend:
  themes: !include_dir_merge_named themes
```

Bestaat `frontend:` al, voeg dan uitsluitend de regel `themes:` aan dat bestaande
blok toe. Maak nooit een tweede `frontend:`-sleutel.

Een kopieerbaar, installatie-onafhankelijk voorbeeld staat in
`examples/configuration.yaml`.

Controleer daarna via **Ontwikkelaarstools → YAML → Configuratie controleren**.
Herstart Home Assistant wanneer de map `themes` of `www` voor het eerst is
aangemaakt. Kies vervolgens in het gebruikersprofiel het theme **Aurora**.

## 4. Storage Mode-dashboard aanmaken

1. Open **Instellingen → Dashboards**.
2. Kies **Dashboard toevoegen**.
3. Gebruik als titel `Aurora` en als URL-pad `dashboard-aurora`.
4. Laat **Alleen beheerders** uit wanneer huisgenoten Aurora mogen gebruiken.
5. Open Aurora en voeg views van het type **Secties** toe.
6. Gebruik `dashboard_map.md` als view- en sectiereferentie.
7. Koppel kaarten uitsluitend aan entity-ID’s die in de eigen installatie
   bestaan.

Registreer geen parallel `lovelace: dashboards:` YAML-dashboard. Storage Mode
blijft de enige bron van waarheid.

## 5. Entiteiten koppelen

`entities.md` en `helpers.md` documenteren de referentie-installatie. Controleer
iedere entity vóór gebruik via **Ontwikkelaarstools → Statussen**.

- Vervang een referentie-ID door het werkelijk bestaande ID van jouw apparaat.
- Laat een kaart weg wanneer de benodigde integratie ontbreekt.
- Verzin nooit entity-ID’s.
- Publiceer geen privé-ID’s in screenshots of bugrapporten.

## 6. Integraties per view

| View | Mogelijke integraties |
|---|---|
| Energie | HomeWizard P1, GoodWe, Utility Meter |
| Klimaat | Nest, Daikin |
| Media | Spotify, Google Cast, televisies |
| Camera’s | Ring of een andere camera-integratie |
| Hobby | OctoPrint, lokale schakelaars en sensoren |
| Rolluiken | Overkiz of een gelijkwaardige cover-integratie |

Alle integraties zijn optioneel: verwijder de bijbehorende kaarten wanneer de
apparatuur niet aanwezig is.

## 7. Utility Meter (optioneel)

Kopieer `utility_meter.yaml` alleen wanneer de bronentiteiten werkelijk bestaan.
Koppel het bestand vervolgens één keer in `configuration.yaml`:

```yaml
utility_meter: !include utility_meter.yaml
```

Controleer de configuratie vóór een herstart. Helpers die via de Home Assistant
UI zijn aangemaakt hoeven niet nogmaals in YAML te worden gedefinieerd.

## 8. Polaris-styling voor een bestaand Aurora-dashboard (gevorderd)

De bestanden in `scripts/` zijn geen volledige dashboardinstaller. Ze passen
uitsluitend de goedgekeurde achtergrond- en headerstyling toe op een reeds
bestaand dashboardbestand met de interne sleutel
`lovelace.dashboard_aurora`.

Maak altijd eerst een Home Assistant-back-up. Gebruik het script alleen via SSH
wanneer je begrijpt dat `.storage` normaal door Home Assistant wordt beheerd:

```sh
cd /config/aurora/scripts
sh ./apply-polaris-storage.sh /config
```

Het script valideert de JSON met `jq` en maakt vóór iedere wijziging een
gedateerde back-up. Herstart Home Assistant na toepassing.

## 9. Eindcontrole

- Aurora opent via `/dashboard-aurora/home`.
- Alle views gebruiken Sections View.
- Mushroom, Bubble Card, ApexCharts en card-mod laden zonder foutmelding.
- Geen kaart toont `Entiteit niet gevonden` of `Custom element doesn't exist`.
- Desktop heeft een rustige brede indeling.
- Tablet gebruikt maximaal twee kolommen.
- Telefoon heeft één kolom en geen horizontale scroll.
- Camera- en mediakaarten tonen geen gegevens aan ongeautoriseerde gebruikers.
- De browserconsole bevat geen terugkerende Aurora-fouten.

## Bijwerken

Maak vóór iedere update een Home Assistant-back-up. Vervang het theme en de
eigen Aurora-assets, herlaad de themes en controleer daarna het dashboard.
Overschrijf nooit automatisch een bestaande Storage Mode-configuratie.

## Beperking van de huidige publieke versie

Een volledig geanonimiseerde Storage Mode-importbundle is nog niet opgenomen.
Daardoor installeert F3 de theme- en stylingfoundation binnen 10–15 minuten,
maar niet automatisch alle voorbeeldviews. Een veilige demonstratiebundle kan
pas worden toegevoegd nadat alle entity-verwijzingen parametriseerbaar zijn.

Officiële achtergrondinformatie:

- [Home Assistant Sections View](https://www.home-assistant.io/dashboards/sections/)
- [Home Assistant dashboardviews](https://www.home-assistant.io/dashboards/views/)
