# Project Polaris — RC1 Acceptance Review

## Status

**Stabilisatiefase — technisch kandidaatwaardig en gereed om als RC1 vast te leggen.**

Vanaf RC1 wordt geen nieuwe functionele scope toegevoegd. Toegestaan zijn
bugfixes, design- en UX-verfijning, performanceverbeteringen en documentatie.

## Scope

Gecontroleerde Aurora-views:

- Home
- Verlichting
- Woonkamer
- Klimaat
- Energie
- Media
- Camera’s
- Hobby, Garage & Tuin

`Instellingen` is bewust geen Aurora-view. Home Assistant Instellingen blijft de
beheeromgeving en is op desktop via de zijbalk bereikbaar.

## Live acceptance review

| Controle | Resultaat |
|---|---|
| Acht Storage Mode-views laden | Geslaagd |
| Ontbrekende entities tijdens audit | Geen |
| `unavailable` tijdens audit | Geen |
| Kapotte apparaatafbeeldingen | Geen |
| Custom-cardconfiguratiefouten | Geen |
| Console errors/warnings | Geen |
| Dubbele actieve dashboardbron | Geen |
| Root-URL opent Aurora Home | Geslaagd |
| Horizontale overflow desktop | Geen functionele overflow |
| Horizontale overflow tablet | Geen |
| Horizontale overflow smartphone | Geen |

## Design

- Hero Cards hebben een consistente schaal en informatiehiërarchie.
- Titels gebruiken dezelfde afgeronde typografie en Aurora-kleurverloop.
- Glas, gradients, randen en schaduwen volgen de centrale tokens.
- Het Aurora-logo staat als herkenbaar watermerk in een vrije achtergrondzone.
- Camera-inhoud en grafieken houden prioriteit boven decoratie.

## Responsive en navigatie

- Desktop behoudt de volledige Home Assistant-beheeromgeving.
- Smartphone verbergt de zijbalk en gebruikt één verticale stroom.
- Tabletkaarten schalen zonder clipping of horizontale overflow.
- De tabletzijbalk is een gebruikers-/apparaatvoorkeur. Gebruik een aparte
  tabletgebruiker en **Zijbalk altijd verbergen** zoals beschreven in
  `AURORA_PRIMARY_UI.md`.
- Optionele kiosk-mode blijft een presentatielaag en geen vereiste dependency.

## Performance

- De CSS is opgesplitst in Theme, Dashboard, Components en optionele Effects.
- Er zijn geen dubbele imports in het centrale manifest.
- Animaties zijn kort en respecteren `prefers-reduced-motion`.
- Er zijn geen nieuwe custom-carddependencies toegevoegd.
- Visuele effecten wijzigen geen entity-updates of kaartfunctionaliteit.

## Open source

- Privacy- en secretsscan: geslaagd.
- Geen persoonlijke screenshots, woningbeelden of lokale paden.
- Fabrikantafbeeldingen zonder distributielicentie zijn verwijderd.
- Desktop-, tablet- en mobiele openbare demo’s gebruiken fictieve gegevens.
- README, installatie, User Guide, FAQ en troubleshooting zijn aanwezig.
- MIT-licentie, contributing- en securitydocumentatie zijn aanwezig.

## Releasebesluit

- RC1 volgt de bestaande stabiele `v1.0.0` als `v1.1.0-rc.1`.
- De technische audit en de browsercontrole zijn geslaagd.
- Aurora is het standaarddashboard en staat bovenaan in de zijbalk.
- Tablet-zijbalkgedrag moet nog op het daadwerkelijke tabletprofiel worden bevestigd.
- Een publieke GitHub Release wordt pas na afzonderlijke goedkeuring aangemaakt.

## Conclusie

Er zijn geen kritieke dashboardfouten gevonden. De technische acceptance review
is geslaagd. De resterende echte-tabletcontrole is niet blokkerend voor het
vastleggen van deze release candidate en blijft onderdeel van de stabilisatie.
