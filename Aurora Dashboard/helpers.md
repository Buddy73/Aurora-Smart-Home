# Aurora Dashboard - Helpers

Dit bestand bevat alle Home Assistant-helpers die binnen het Aurora Dashboard gebruikt mogen worden.

Gebruik uitsluitend helper-entity_id's uit dit bestand.

Verzin nooit nieuwe entity_id's.

Als een benodigde helper ontbreekt, vraag er expliciet om in plaats van een entity_id te verzinnen.

# Utility Meters

## Energie

| Functie | Entity | Bron |
|---------|--------|------|
| Import vandaag | `sensor.elektriciteit_import_vandaag` | `sensor.p1_meter_energie_import` |
| Export vandaag | `sensor.elektriciteit_export_vandaag` | `sensor.p1_meter_energie_export` |
| Opwek vandaag | `sensor.zonneproductie_vandaag` | `sensor.inverter_gw3600d_ns_energy_today` |
| Netimport vandaag | `sensor.meterkast_p1_meter_netimport_vandaag` | Niet gedocumenteerd |

> Runtimecontrole tijdens Fase E6: de hierboven vermelde Utility Meter-entiteiten zijn wel in het project geconfigureerd, maar worden momenteel niet door de live Home Assistant-installatie geleverd. Gebruik ze pas in Storage Mode nadat ze in Home Assistant zichtbaar zijn en opnieuw zijn gevalideerd.

# Groepen

| Functie | Entity | Bestaat uit |
|---------|--------|-------------|
| Woonkamer verlichting | `light.woonkamer_verlichting` | `light.salon1`, `light.salon2`, `light.salon3`, `light.sierlamp`, `light.woonkamer_wandlamp_dimmer` |
| Eetkamer verlichting | `light.eetkamerverlichting` | Niet gedocumenteerd |
| Slaapkamer verlichting | `light.slaapkamer_verlichting` | Niet gedocumenteerd |
| Rolluiken Keuken | `cover.rolluikengroep_keuken` | Niet gedocumenteerd |
| Rolluiken Woonkamer | `cover.rolluikengroep_woonkamer` | Niet gedocumenteerd |

# Templates

Nog geen template-helpers gedocumenteerd.

# Overige helpers

Nog geen input booleans, input numbers, input selects of timers gedocumenteerd.
