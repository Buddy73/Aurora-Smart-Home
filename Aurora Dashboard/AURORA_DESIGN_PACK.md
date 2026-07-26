# Aurora Design Pack

Het Aurora Design Pack is een visuele upgrade voor het Aurora Smart Home
Dashboard. Het verandert geen Home Assistant-entiteiten, helpers, scripts,
automatiseringen, services of apparaatfunctionaliteit.

## Home-view

De Home-view volgt deze informatiehiërarchie:

1. Aurora-logo en Hero Card met subtiele Aurora Glow.
2. Persoonlijke, tijdsafhankelijke begroeting.
3. Vandaag met weer, datum en tijd.
4. Live Energie.
5. Live Klimaat.
6. Media en Veiligheid.
7. Kamers.
8. Favoriete apparaten en bestaande scènes.
9. Camera's.
10. 3D Printing Hub.
11. Systeemstatus.

## Visuele uitgangspunten

- Het bestaande Aurora-theme blijft actief.
- De Hero Card gebruikt het bestaande lokale Aurora-logo.
- Glow, gradients en schaduwen blijven subtiel en leesbaar.
- Mushroom Cards blijven de standaard voor status en bediening.
- Camera's behouden hun bestaande liveweergave.
- Sections View blijft responsief met maximaal twee kolommen.
- Alle bestaande acties en service-calls blijven behouden.

## Architectuur

Home Assistant Storage Mode is de enige bron van waarheid voor de live
dashboardconfiguratie. Dit document beschrijft de implementatie en vormt geen
parallel YAML-dashboard.

## Responsive validatie

De Home-view is gecontroleerd voor desktop, tablet en telefoon:

- geen horizontale overflow;
- geen configuratiefouten;
- belangrijkste live-informatie staat bovenaan;
- camera's en de 3D Printing Hub gebruiken op desktop de volledige breedte;
- kaarten schalen op kleinere schermen naar een rustige verticale volgorde.
