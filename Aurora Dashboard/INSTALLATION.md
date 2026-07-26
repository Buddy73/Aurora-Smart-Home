# Installatiehandleiding

## Vereisten

- Een actuele Home Assistant-installatie.
- Toegang tot de map `/config`.
- HACS.
- De benodigde apparatuur en integraties.

## Frontend installeren

Installeer via HACS:

1. Mushroom Cards
2. Bubble Card
3. ApexCharts Card
4. card-mod

Herlaad de browser nadat frontendresources zijn gewijzigd.

## Theme en assets

1. Kopieer `themes/aurora.yaml` naar `/config/themes/aurora.yaml`.
2. Kopieer de benodigde assets naar `/config/www/aurora/`.
3. Controleer in `configuration.yaml`:

   ```yaml
   frontend:
     themes: !include_dir_merge_named themes
   ```

4. Herlaad de themes of herstart Home Assistant wanneer de themeconfiguratie nieuw is.
5. Selecteer het theme `Aurora`.

## Dashboard

Aurora gebruikt uitsluitend Storage Mode:

1. Open **Instellingen → Dashboards**.
2. Maak een dashboard met URL-pad `dashboard-aurora`.
3. Open het dashboard en kies **Dashboard bewerken**.
4. Bouw of importeer de goedgekeurde Storage Mode-configuratie.
5. Registreer geen tweede YAML-dashboard.

De repository registreert bewust geen parallel Lovelace YAML-dashboard.

## Entiteiten controleren

Vergelijk vóór gebruik alle kaarten met:

- `entities.md`;
- `helpers.md`.

Vervang installatiegebonden ID’s uitsluitend door werkelijk bestaande Home Assistant-entiteiten. Voeg geen placeholders toe.

## Utility Meters

`utility_meter.yaml` bevat bestaande dagmeters. Koppel dit bestand alleen wanneer de bronentiteiten daadwerkelijk beschikbaar zijn:

```yaml
utility_meter: !include utility_meter.yaml
```

Controleer daarna de configuratie via Home Assistant voordat opnieuw wordt gestart.

## Validatie

Controleer na installatie:

- alle acht views laden;
- geen kaart meldt “Entiteit niet gevonden”;
- Mushroom, Bubble Card en ApexCharts laden;
- geen horizontale scroll op telefoon;
- camera’s en media zijn bereikbaar;
- energie-entiteiten leveren langetermijnstatistieken.

Een wijziging in uitsluitend Storage Mode vereist normaal geen Home Assistant-herstart.
