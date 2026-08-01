# Aurora Developer Handbook

> **Status:** officiële ontwikkelbron voor Aurora UI vanaf Project Polaris.
> **Versie:** v1.1.0-rc.1
> **Taal:** Nederlandse UI, Engelstalige publieke communitycommunicatie.

Dit handboek is de centrale bron van waarheid voor ontwerp, architectuur,
ontwikkeling, releases en open-sourcebijdragen aan Aurora. Praktische
installatie-, gebruikers- en probleemoplossingsdocumenten blijven bestaan, maar
zijn ondergeschikt aan de regels en besluiten in dit handboek.

## 01. Vision

Aurora is de dagelijkse gebruikersinterface van een Home Assistant-installatie:
rustig, persoonlijk, responsief en prettig in gebruik. Home Assistant is de
technische motor; Aurora is de zichtbare Smart Home-ervaring.

Functionaliteit, begrijpelijkheid en betrouwbaarheid gaan altijd voor decoratie.
De interface moet voelen als licht, glas en ruimte — niet als een verzameling
losse Home Assistant-kaarten.

## 02. Architecture

- Het actieve dashboard gebruikt uitsluitend **Home Assistant Storage Mode**.
- Wijzig live views via Home Assistant; maak geen parallel volledig
  YAML-dashboard.
- YAML in deze repository is referentie-, configuratie- of helpermateriaal;
  het is niet de actieve Lovelace-bron.
- Gebruik standaard Home Assistant-functies waar mogelijk. Custom frontendkaarten
  zijn beperkt tot Mushroom Cards, Bubble Card, ApexCharts en card-mod.
- Iedere visuele wijziging behoudt bestaande entiteiten, acties en diensten,
  tenzij een expliciete wijzigingsopdracht anders bepaalt.

## 03. Aurora Design System

### Principes

1. Rust boven dichtheid.
2. Duidelijke informatiehiërarchie boven elke beschikbare sensor tonen.
3. Eén herkenbare Aurora-taal op alle views.
4. Kleur ondersteunt status, maar tekst en iconen dragen die altijd ook.
5. Materiaal en sfeer blijven subtiel; leesbaarheid en prestaties zijn vast.

### Basistokens

- Basiskleur: Aurora Midnight `#0B1020`.
- Gebruik per view maximaal één hoofdaccent uit het Aurora-palet.
- Spacingbasis: `4px`; kaartpadding: `16px`; hoofdsectieafstand: `24px`.
- Standaard kaartradius: `18px`.
- Gebruik transparante glasoppervlakken met een leesbare, neutrale fallback.
- Gebruik de tokens uit `themes/aurora.yaml`; dupliceer geen tokenwaarden in
  individuele kaarten wanneer dat niet nodig is.

### Responsive contract

| Context | Richtlijn |
|---|---|
| Desktop | 12-kolomslogica, maximaal twee hoofdsecties naast elkaar. |
| Tablet | 6-kolomslogica, behoud primaire bediening en leesbaarheid. |
| Mobiel | Eén kolom, hoofdinformatie eerst, grafieken later, geen horizontale scroll. |

Controleer een relevante view minimaal op 1920×1080, 1024×768 en 390×844.

## 04. Branding

Aurora communiceert premium, kalm en menselijk. Gebruik afgeronde typografie,
subtiele cyaan-, paars- en mintaccenten en nooit agressieve neon, RGB-effecten,
drukke achtergronden of harde rechthoeken.

- Logo: `assets/logo/aurora-logo.png`.
- Watermerk: `assets/logo/aurora-logo-watermark.png`.
- Achtergrond: `assets/backgrounds/aurora-polaris-background.png`.
- Apparaten ondersteunen informatie; zij domineren een kaart niet.
- Gebruik uitsluitend eigen Aurora-assets of beelden met vastgelegde
  distributierechten.

## 05. Dashboard Views

Alle views gebruiken Sections View en volgen hetzelfde ritme: compacte hero,
statusoverzicht, hoofdsecties, contextuele detailkaarten en snelle bediening.

| View | Primaire taak |
|---|---|
| Home | Dagelijks overzicht, favorieten en systeemstatus. |
| Verlichting | Ruimtes, groepen, dimmers, scènes en snelle acties. |
| Woonkamer | Centrale comfortview: licht, media, klimaat, rolluiken en scènes. |
| Klimaat | Nest, airco's, temperaturen en comfortbediening. |
| Energie | Energiebalans, historie, GoodWe, P1 en gas. |
| Media | Actieve media, kamers en beschikbare apparaatbediening. |
| Camera's | Live zicht op relevante camerastromen. |
| Hobby, Garage & Tuin | Printers, ruimtes, tuin en snelle bediening. |

De actuele sectiestructuur staat in `dashboard_map.md`. De Woonkamer-view is de
visuele referentie voor nieuwe views; Energie is de referentie voor duidelijke
informatiehiërarchie en grafieken.

## 06. Components

- **Mushroom Cards:** standaard voor apparaten en bediening.
- **Bubble Cards:** uitsluitend navigatie.
- **ApexCharts:** grafieken met aantoonbare informatieve waarde.
- **card-mod:** alleen voor een beperking die niet in het centrale theme of de
  gebruikte kaart kan worden opgelost.
- **Standaard HA-kaarten:** toegestaan wanneer zij functioneel sterker zijn.

Geen experimentele kaarten, deprecated kaarten of custom kaarten zonder
onderhoudswaarde. Verberg bediening die een apparaat niet ondersteunt.

## 07. Theme

De styling is modulair en bevat geen entiteiten, helpers of functionaliteit.

| Package | Entry point | Verantwoordelijkheid |
|---|---|---|
| Theme | `css/theme.css` / `themes/aurora.yaml` | Tokens, palet, typografie en toegankelijkheid. |
| Dashboard | `css/dashboard.css` | Achtergrond, hero, layout en responsive gedrag. |
| Components | `css/components.css` | Kaarten, knoppen en navigatie. |
| Effects | `css/effects.css` | Optionele reflecties, glow en beperkte animatie. |

Laad CSS niet rechtstreeks als Lovelace-resource. `themes/aurora.css` is alleen
bruikbaar via een aantoonbaar compatibele frontendintegratie. Effects respecteren
`prefers-reduced-motion` en mogen inhoud nooit hinderen.

## 08. Entities & Helpers

`entities.md` en `helpers.md` zijn de feitelijke registries voor een Aurora-
installatie. Dit handboek bepaalt de werkwijze; deze registries bepalen welke
IDs mogen worden gebruikt.

- Gebruik uitsluitend geregistreerde entity_id's en helpers.
- Verzin nooit IDs, attributen, services of apparaatfuncties.
- Ontbreekt iets? Vraag er expliciet om en registreer het pas na live validatie.
- Voor publieke voorbeelden worden geen persoonlijke of installatiegebonden IDs
  gekopieerd; documenteer domeinen en capabilities.
- `unavailable` is een legitieme status en geen reden voor een kapotte of lege
  kaart.

## 09. Development Workflow

1. Lees dit handboek, `entities.md`, `helpers.md` en `dashboard_map.md`.
2. Analyseer de bestaande view en bepaal de kleinste veilige wijziging.
3. Valideer gebruikte entiteiten en ondersteunde functies live.
4. Pas Storage Mode gericht aan; behoud bestaande functionaliteit.
5. Controleer desktop, tablet en mobiel.
6. Controleer op dubbele informatie, unavailable-entiteiten, consolefouten,
   Home Assistant-waarschuwingen en overbodige CSS.
7. Werk documentatie, changelog en relevante assets mee bij.
8. Commit klein, begrijpelijk en toetsbaar.

## 10. Git Strategy

- `main` is stabiel en publiek presentabel.
- Ontwikkel op een doelgerichte featurebranch, bijvoorbeeld
  `feature/weather-improvements`.
- Gebruik conventionele, korte commits: `fix(media): …`, `docs: …`,
  `feat(components): …`.
- Push geen private configuratie, Storage-bestanden, secrets, databases,
  back-ups of persoonlijke screenshots.
- Gebruik pull requests voor samenvoeging naar `main` en voeg geanonimiseerde
  screenshots toe wanneer een zichtbare wijziging dat rechtvaardigt.
- Houd releases aan semantic versioning.

## 11. Open Source Guide

Aurora is open source zonder een persoonlijke Home Assistant-installatie te
publiceren.

- Publiceer alleen generieke voorbeelden en geanonimiseerde mock-ups.
- Gebruik eigen assets of aantoonbaar gelicentieerde assets.
- Documenteer afhankelijkheden, installatiebeperkingen en Storage Mode helder.
- Vermeld AI-assistentie transparant: Aurora wordt onderhouden door de
  maintainer met ondersteuning van OpenAI Codex/ChatGPT; live gedrag wordt in
  Home Assistant gevalideerd.
- Gebruik GitHub Issues en Discussions voor feedback; publiceer nooit namens
  de maintainer zonder toestemming.

## 12. Release Management

1. Feature freeze of stabilisatiefase afkondigen.
2. Controleer `git status`, privacy, assets, documentatie, README en links.
3. Voer desktop-, tablet- en mobiele kwaliteitscontrole uit.
4. Werk `VERSION`, `CHANGELOG.md` en `RELEASE_NOTES.md` bij.
5. Commit, tag en push gecontroleerd.
6. Maak pas daarna een GitHub Release met geanonimiseerde release-assets.
7. Gebruik de Discord- en forumconcepten onder `docs/` na een expliciet besluit
   tot publicatie.

## 13. Roadmap

Na Project Polaris valt ontwikkeling onder reguliere Aurora UI-versies.

- **v1.1:** stabiliteit, kleine UX-correcties en communityfeedback.
- **v1.2:** zorgvuldig geselecteerde uitbreidingen met een duidelijke
  gebruikerswaarde.
- **v2.0:** alleen voor een fundamentele architectuur- of designwijziging.

Geen roadmapitem mag de Storage Mode-architectuur, privacy- of
toegankelijkheidsprincipes omzeilen.

## 14. Architectural Decision Log (ADR)

| ADR | Besluit | Reden |
|---|---|---|
| ADR-001 | Storage Mode is de actieve dashboardbron. | Sluit aan op de gebruikte Home Assistant-architectuur en voorkomt parallelle bronnen. |
| ADR-002 | Home Assistant blijft de technische basis. | Integraties, beveiliging, apparaten en automatisering blijven in een bewezen platform. |
| ADR-003 | Aurora is de primaire gebruikersinterface. | Dagelijkse bediening moet Aurora voelen, zonder beheerfuncties van HA te verliezen. |
| ADR-004 | Mushroom is de standaardkaart. | Compact, herkenbaar, goed onderhoudbaar en geschikt voor responsieve bediening. |
| ADR-005 | Bubble Cards zijn navigatiegericht. | Beperkt visuele inconsistentie en houdt bediening functioneel. |
| ADR-006 | ApexCharts is de grafiekstandaard. | Geeft bruikbare historische inzichten zonder extra visualisatiesysteem. |
| ADR-007 | Glassmorphism en Aurora Glow zijn subtiel. | Ze ondersteunen premium materiaalgevoel zonder contrast of prestaties te schaden. |
| ADR-008 | Styling is opgesplitst in Theme, Dashboard, Components en Effects. | Hergebruik, onderhoudbaarheid en optionele decoratie. |
| ADR-009 | Entities en helpers zijn afzonderlijke registries. | Fysieke apparaten en afgeleide Home Assistant-logica blijven helder gescheiden. |
| ADR-010 | Aurora is AI-assisted, niet AI-autonoom. | Transparantie over de ontwikkelwijze, met live validatie als kwaliteitsgrens. |

## 15. Appendix

### Officiële operationele referenties

- Installatie: `INSTALLATION.md`
- Dagelijks gebruik: `USER_GUIDE.md`
- Problemen oplossen: `TROUBLESHOOTING.md`
- Beveiliging: `SECURITY.md`
- Bijdragen: `CONTRIBUTING.md`
- Viewstructuur: `dashboard_map.md`
- Entiteiten: `entities.md`
- Helpers: `helpers.md`
- Versiehistorie: `CHANGELOG.md`

### Projectstatus

Project Polaris is inhoudelijk afgerond zodra deze handbook-wijziging naar
`main` is samengevoegd. Daarna is Polaris de historische initiële
ontwikkelfase; nieuwe werkzaamheden lopen onder reguliere Aurora UI-versies.
