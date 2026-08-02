# Aurora als primaire gebruikersinterface

> Raadpleeg de [Aurora Developer Handbook](../DEVELOPER_HANDBOOK.md) voor de
> bijbehorende architectuurbesluiten en ontwikkelrichtlijnen.

> De [Aurora Developer Handbook](../DEVELOPER_HANDBOOK.md) bepaalt de
> architectuurprincipes; dit document is de operationele implementatiegids.

Aurora is het standaarddashboard voor dagelijkse bediening. Home Assistant
blijft de technische beheeromgeving.

## Standaard opstartgedrag

- Stel `Aurora` onder **Instellingen > Dashboards** in als systeemstandaard.
- Selecteer `Aurora` ook in het persoonlijke profiel bij **Dashboard**.
- De basis-URL van Home Assistant opent daardoor rechtstreeks
  `/dashboard-aurora/home`.
- Gebruik een aparte Home Assistant-gebruiker voor een wandtablet wanneer het
  apparaat afwijkende dashboard- of zijbalkvoorkeuren nodig heeft.

## Desktop

- Aurora opent standaard.
- De zijbalk blijft zichtbaar.
- Alle beheer- en onderhoudsfuncties blijven bereikbaar.

## Tablet

### Android

De voorkeursoplossing gebruikt standaard Home Assistant-functionaliteit:

1. Gebruik een afzonderlijke tabletgebruiker.
2. Kies Aurora als standaarddashboard voor die gebruiker.
3. Activeer lokaal **Zijbalk altijd verbergen** in het gebruikersprofiel.
4. Stel de Home Assistant Companion App desgewenst in als Android Home-app.
5. Activeer **Keep screen on** op een vast gemonteerd bedieningspaneel.

### iPad

Gebruik de officiële Kiosk Mode in de Home Assistant Companion App wanneer die
op het apparaat beschikbaar is. Selecteer Aurora als dashboard en schakel het
verbergen van zijbalk en dashboardbediening in.

## Smartphone

- Aurora opent standaard.
- Home Assistant verbergt de zijbalk automatisch op smalle schermen.
- De normale mobiele navigatie blijft beschikbaar.

## Optionele Aurora Kiosk Mode

Voor browsergebaseerde wandpanelen die ook de bovenbalk volledig moeten
verbergen, kan `NemesisRE/kiosk-mode` optioneel via HACS worden gebruikt.
Aurora mag hiervan niet afhankelijk worden: het dashboard moet zonder deze
plugin volledig bruikbaar blijven.

Voor Home Assistant 2026.3 of nieuwer is minimaal Kiosk Mode 11 vereist.
Configuratie in Storage Mode wordt op dashboardniveau toegevoegd via de ruwe
configuratie-editor. Gebruik altijd een beheeruitgang, bijvoorbeeld de
`?disable_km` queryparameter, zodat onderhoud bereikbaar blijft.

Kiosk Mode is een presentatielaag en geen beveiligingsmechanisme.

## Onderhoudsprincipes

- Geef standaard Home Assistant-functionaliteit voorrang.
- Houd kioskfunctionaliteit apparaat- en gebruikersgebonden.
- Verberg beheerfuncties niet op desktop.
- Gebruik geen automatische redirects of globale CSS-hacks.
- Test kioskgedrag na iedere grote Home Assistant-frontendupdate.
