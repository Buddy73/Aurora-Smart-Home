# Aurora UI Style Guide

## Paginaopbouw

- Gebruik Sections View.
- Desktop: 12-kolomslogica; tablet: 6-kolomslogica; telefoon: één verticale stroom.
- Begin met een compacte titel of Hero Card, gevolgd door logisch gegroepeerde secties.
- Gebruik `16px` kaartpadding en `24px` tussen hoofdsecties.

## Kaartkeuze

- Mushroom Cards zijn de standaard.
- Bubble Cards zijn uitsluitend voor navigatie.
- ApexCharts is de standaard voor grafieken.
- Standaard Home Assistant-kaarten zijn toegestaan wanneer ze functioneel sterker zijn.
- Gebruik geen deprecated kaarten.

## Visuele regels

- Kaarten: radius `18px`, transparant glasoppervlak en dunne lichte rand.
- Maximaal één accentkleur per view.
- Actieve status: accentkleur; inactief: neutraal grijs.
- Houd grafiekassen, secundaire tekst en niet-kritieke iconen rustig.
- Gebruik `card-mod` alleen als het centrale theme de gewenste stijl niet ondersteunt.

## Contentregels

- Gebruik Nederlandse titels.
- Gebruik uitsluitend entity_id's uit `entities.md` en `helpers.md`.
- Verzin geen entiteiten, helpers, media-attributen of apparaatfuncties.
- Verberg niet-ondersteunde bediening.
- Laat `unavailable` netjes als status zien; voorkom lege of kapotte kaarten.

## Toegankelijkheid en prestaties

- Primaire tekst voldoet minimaal aan WCAG AA-contrast.
- Kleur is nooit de enige statusdrager; gebruik ook tekst en icoon.
- Touchdoelen zijn minimaal 44×44px.
- Maximaal twee achtergrondgradients per view.
- Geen video-achtergronden of continue animaties.
- Geen herhaalde CSS per kaart wanneer een theme-token volstaat.

## Controlelijst voor nieuwe views

- Sections View en juiste responsive kolommen.
- Eén viewaccent uit het officiële palet.
- Gelijke marges, spacing en radius.
- Alleen gedocumenteerde entiteiten/helpers.
- Geen dubbele bediening.
- Desktop, tablet en telefoon visueel gecontroleerd.
- Geen Home Assistant-waarschuwingen of ontbrekende custom cards.

## Referentie-view

De Storage Mode-view `Woonkamer` uit Fase E4 is de visuele en functionele referentie voor volgende Aurora-pagina's.

Neem hiervan over:

- een compacte hero met titel en één subtitel;
- een statusrij boven de hoofdsecties;
- maximaal twee hoofdsecties naast elkaar;
- volledige kaartbreedte voor primaire bediening en halve breedte voor secundaire bediening;
- compacte scènes en snelle acties onderaan;
- een rustige glassmorphism-basis met één warm viewaccent en een subtiel Aurora-watermerk;
- ruime mediakaarten met live metadata en alleen de door het apparaat beschikbare bediening;
- extra verticale ademruimte vóór comfort-, zonwering- en scènesecties;
- dezelfde responsive controle op 1920×1080, 1024×768 en 390×844.

Voor de Klimaat-view wordt dit patroon vertaald naar: header, statusoverzicht, één dominante klimaatkaart, compacte subkaarten en snelle bediening.
