# Open Source Readiness

## F4-status

| Onderdeel | Status | Opmerking |
|---|---|---|
| MIT-licentie | Gereed | Geldt voor eigen Aurora-code en assets |
| README | Gereed | Architectuur, quick start en documentindex bijgewerkt |
| Installatie | Gereed | Veilige 10–15 minuten-foundation |
| User Guide | Gereed | Alle acht views en dagelijkse bediening |
| FAQ | Gereed | Architectuur, installatie en compatibiliteit |
| Troubleshooting | Gereed | Theme, cards, entities, charts, camera en layout |
| Branding & Design System | Gereed | Gesynchroniseerd met actuele Polaris-tokens |
| Changelog & release notes | Gereed | Voorbereid voor `v1.1.0-rc.1` |
| Privacy | Gereed | Geen persoonlijke screenshots of lokale paden |
| Externe productbeelden | Gereed | Niet meegeleverd zonder distributielicentie |
| Publieke desktopdemo | Gereed | Fictieve waarden en abstracte camerategels |
| Tablet- en mobiele demo | Gereed | Geanonimiseerde publieke mock-ups |
| Parametriseerbare dashboardimport | Open | Nog geen veilige universele Storage Mode-bundle |

## Publicatievoorwaarden

De publieke mock-ups zijn gereed. Vóór een publieke release moet de resterende
RC1-releaseadministratie zijn afgerond. Een release mag niet suggereren dat alle
voorbeeldviews automatisch worden geïnstalleerd zolang de parametriseerbare
importbundle ontbreekt.

## Privacyregels

- Geen namen, profielfoto’s, adressen of woningbeelden.
- Geen camera-inhoud of actuele woningstatus.
- Geen tokens, externe URL’s, lokale paden of `.storage`-exports.
- Geen fabrikantafbeeldingen zonder aantoonbare distributielicentie.
- Gebruik fictieve waarden in alle publieke demonstraties.

## Modulaire distributie

- Theme kan zelfstandig worden gebruikt.
- Dashboardregels vereisen geen Effects-pakket.
- Components blijven los bruikbaar van achtergrond en animatie.
- Effects zijn optioneel en respecteren `prefers-reduced-motion`.
- Storage Mode blijft de enige dashboardbron.
