# Aurora Dashboard - Fysieke entiteiten

Dit bestand bevat uitsluitend fysieke apparaten en hoofdentiteiten.

Gebruik voor Home Assistant-helpers uitsluitend `helpers.md`.

Gebruik uitsluitend entity_id's uit `entities.md` en `helpers.md`.

Verzin nooit nieuwe entity_id's.

Als een benodigde entity ontbreekt, vraag er expliciet om in plaats van een entity_id te verzinnen.

# GoodWe SEMS API

## Live

- `sensor.inverter_gw3600d_ns_vermogen` — Actueel uitgangsvermogen van de omvormer.
- `sensor.inverter_gw3600d_ns_status` — Actuele bedrijfsstatus van de omvormer.
- `sensor.inverter_gw3600d_ns_temperatuur` — Actuele temperatuur van de omvormer.
- `sensor.inverter_gw3600d_ns_grid_meter_power` — Actueel vermogen dat via de netmeter wordt gemeten.

## Energie

- `sensor.inverter_gw3600d_ns_energie` — Totale cumulatieve energieopbrengst.
- `sensor.inverter_gw3600d_ns_energy_today` — Energieopbrengst van vandaag.
- `sensor.inverter_gw3600d_ns_energy_this_month` — Energieopbrengst van de huidige maand.
- `sensor.inverter_gw3600d_ns_energy_last_month` — Energieopbrengst van de vorige maand.

## Inkomsten

- `sensor.inverter_gw3600d_ns_income_today` — Berekende opbrengst of inkomsten van vandaag.
- `sensor.inverter_gw3600d_ns_income_total` — Totale berekende opbrengst of inkomsten.

## PV Strings

- `sensor.inverter_gw3600d_ns_pv_string_1_voltage` — Actuele spanning van PV-string 1.
- `sensor.inverter_gw3600d_ns_pv_string_1_current` — Actuele stroomsterkte van PV-string 1.
- `sensor.inverter_gw3600d_ns_pv_string_2_voltage` — Actuele spanning van PV-string 2.
- `sensor.inverter_gw3600d_ns_pv_string_2_current` — Actuele stroomsterkte van PV-string 2.
- `sensor.inverter_gw3600d_ns_pv_string_3_voltage` — Actuele spanning van PV-string 3.
- `sensor.inverter_gw3600d_ns_pv_string_3_current` — Actuele stroomsterkte van PV-string 3.
- `sensor.inverter_gw3600d_ns_pv_string_4_voltage` — Actuele spanning van PV-string 4.
- `sensor.inverter_gw3600d_ns_pv_string_4_current` — Actuele stroomsterkte van PV-string 4.


# HomeWizard P1

## Live

- `sensor.p1_meter_vermogen`
- `sensor.p1_meter_vermogen_fase_1`
- `sensor.p1_meter_stroom`
- `sensor.p1_meter_stroom_fase_1`
- `sensor.p1_meter_spanning_fase_1`
- `sensor.p1_meter_tarief`

## Energie

- `sensor.p1_meter_energie_import`
- `sensor.p1_meter_energie_export`
- `sensor.p1_meter_energie_import_tarief_1`
- `sensor.p1_meter_energie_import_tarief_2`
- `sensor.p1_meter_energie_export_tarief_1`
- `sensor.p1_meter_energie_export_tarief_2`

## Systeem

- `sensor.p1_meter_dsmr_versie`
- `sensor.p1_meter_slimme_meter_model`
- `sensor.p1_meter_slimme_meter_identificatie`
- `sensor.p1_meter_uptime`
- `sensor.p1_meter_wi_fi_rssi`
- `sensor.p1_meter_wi_fi_sterkte`
- `sensor.p1_meter_wi_fi_ssid`
- `switch.p1_meter_cloud_verbinding`

## Gas

- `sensor.gas_meter_gas`

# Ring Camera's

## Live camera's

| Functie | Entity |
|---------|--------|
| Voorkant | `camera.voorkant_live_weergave` |
| Voordeur | `camera.voordeur_2` |
| Voordeur (alternatief) | `camera.voordeur_3` |
| Achtertuin | `camera.achtertuin_live_weergave` |
| Woonkamer | `camera.woonkamer_live_weergave` |

## Laatste opname

| Functie | Entity |
|---------|--------|
| Voorkant | `camera.voorkant_last` |
| Achtertuin | `camera.achtertuin_laatste_opname` |
| Woonkamer | `camera.woonkamer_laatste_opname` |

## Overig

| Functie | Entity |
|---------|--------|
| Buienradar | `camera.buienradar` |

# Verlichting

## Woonkamer

| Functie | Entity | Type |
|---------|--------|------|
| Wandlamp | `light.woonkamer_wandlamp_dimmer` | Light |
| Woonkamerlamp | `light.ac_11971da_5` | Light (dimbaar) |
| Sierlamp | `light.sierlamp` | Light |
| Salon 1 | `light.salon1` | Light |
| Salon 2 | `light.salon2` | Light |
| Salon 3 | `light.salon3` | Light |
| Stalamp | `switch.ac_17cd276_1` | Switch (niet dimbaar) |
| Ambilight TV | `light.tv_woonkamer_ambilight` | Light |
| Ambilight Hue-koppeling | `switch.tv_woonkamer_ambilight_hue` | Switch |

## Eetkamer

| Functie | Entity | Type |
|---------|--------|------|
| Eetkamerlamp 1 | `light.eetkamerlamp1` | Light |
| Eetkamerlamp 2 | `light.eetkamerlamp2` | Light |
| Ledstrip | `light.ledstrip` | Light |

## Keuken

| Functie | Entity | Type |
|---------|--------|------|
| Keukenverlichting | `light.keukenverlichting` | Light |

## Slaapkamer

| Functie | Entity | Type |
|---------|--------|------|
| Spot links | `light.slaapkamerspotl` | Light |
| Spot rechts | `light.slaapkamerspotr` | Light |
| Spiegellamp | `light.spiegellamp` | Light |

## Logeerkamer

| Functie | Entity | Type |
|---------|--------|------|
| Spots | `light.ac_01f3e35_1` | Light |

## Tuinverlichting

| Functie | Entity | Type |
|---------|--------|------|
| Lamp onder afdak | `switch.ac_11971da_2` | Switch |
| Prikkabelverlichting | `switch.ac_11971da_3` | Switch |

## Geïntegreerde cameraverlichting

Deze lampen horen bij de Ring-camera's en worden niet gebruikt als algemene tuinverlichting op de Verlichting-view.

| Functie | Entity | Type |
|---------|--------|------|
| Cameralamp voorkant | `light.voorkant_licht` | Light (Ring) |
| Cameralamp achtertuin | `light.achtertuin_licht` | Light (Ring) |

# Rolluiken

## Eetkamer

| Functie | Entity | Type |
|---------|--------|------|
| Rolluik Eetkamer | `cover.eetkamer` | Overkiz |
| Rolluik Eetkamer lage snelheid | `cover.eetkamer_low_speed` | Overkiz |

## Keuken

| Functie | Entity | Type |
|---------|--------|------|
| Rolluik Keuken Klein | `cover.keuken_klein` | Overkiz |
| Rolluik Keuken Klein lage snelheid | `cover.keuken_klein_low_speed` | Overkiz |
| Rolluik Keuken Voorkant | `cover.keuken_voor` | Overkiz |
| Rolluik Keuken Voorkant lage snelheid | `cover.keuken_voor_low_speed` | Overkiz |

## Tuin

| Functie | Entity | Type |
|---------|--------|------|
| Screens | `cover.zonnescherm_achter` | Overkiz |

## Woonkamer

| Functie | Entity | Type |
|---------|--------|------|
| Rolluik Tuindeuren | `cover.schuifpui` | Overkiz |
| Rolluik Tuindeuren lage snelheid | `cover.schuifpui_low_speed` | Overkiz |
| Rolluik Woonkamer | `cover.woonkamer` | Overkiz |
| Rolluik Woonkamer lage snelheid | `cover.woonkamer_low_speed` | Overkiz |

# Klimaat

## Centrale thermostaat

| Functie | Entity | Type |
|---------|--------|------|
| Nest Thermostaat | `climate.nest_thermostaat` | Climate |

## Woonkamer

| Functie | Entity | Type |
|---------|--------|------|
| Daikin Airco | `climate.airco_woonkamer_room_temperature` | Climate |
| Ruimtetemperatuur | `sensor.airco_woonkamer_climatecontrol_ruimte_temperatuur` | Sensor |
| Buitentemperatuur | `sensor.airco_woonkamer_climatecontrol_buiten_temperatuur` | Sensor |

## Slaapkamer

| Functie | Entity | Type |
|---------|--------|------|
| Daikin Airco | `climate.airco_slaapkamer_room_temperature` | Climate |
| Ruimtetemperatuur | `sensor.airco_slaapkamer_climatecontrol_ruimte_temperatuur` | Sensor |
| Buitentemperatuur | `sensor.airco_slaapkamer_climatecontrol_buiten_temperatuur` | Sensor |

# Media

## Opmerkingen

### Philips TV

Actieve entity:

- `media_player.tv_woonkamer_3`

Oude/dubbele entiteiten (niet gebruiken):

- `media_player.tv_woonkamer`
- `media_player.tv_woonkamer_2`
- `media_player.tv_woonkamer_4`

### Nest Hub

Actieve entity:

- `media_player.nest_hub_woonkamer`

Oude/dubbele entity (niet gebruiken):

- `media_player.nesthube385`

### Spotify

De persoonlijke Spotify-entity_id is om privacyredenen niet in de publieke repository opgenomen.

### Slaapkamer

Actieve entities:

- `media_player.slaapkamer_samsung_tv` — Samsung TV in de slaapkamer.
- `media_player.nest_mini` — Nest Mini in de slaapkamer.

### Logeerkamer

Actieve entity:

- `media_player.chromecast_philps_tv` — Chromecast van de Philips TV in de logeerkamer.

# Scripts

| Functie | Entity | Type |
|---------|--------|------|
| Alles Uit | `script.alles_uit` | Script |
| Nacht | `script.nacht` | Script |
| Thuis | `script.thuis` | Script |
| Weg | `script.weg` | Script |

# Weer

| Functie | Entity | Type |
|---------|--------|------|
| Buienradar | `weather.buienradar` | Weather |

# Tuinapparatuur

| Functie | Entity | Type |
|---------|--------|------|
| WCD HEATER | `switch.ac_11971da_4` | Switch |

# 3D-printers

## Tronxy X5SA SE via OctoPrint

Home Assistant-area: **Kleine Kamer**. Dashboardnaam: **Hobbyruimte**.

| Friendly Name | Entity ID | Area | Domein | Beschikbare attributen | Ondersteunde services |
|---------------|-----------|------|---------|------------------------|-----------------------|
| Printerverlichting | `light.kleine_kamer_3d_pirnter_tronxy` | Kleine Kamer | `light` | Helderheid, kleur, effect | `light.turn_on`, `light.turn_off`, `light.toggle` |
| Printervoeding | `switch.tronxy_3d_printer` | Kleine Kamer | `switch` | Status | `switch.turn_on`, `switch.turn_off`, `switch.toggle` |
| Print actief | `binary_sensor.octoprint_printing` | Kleine Kamer | `binary_sensor` | Status, device class | Geen bediening |
| Printfout | `binary_sensor.octoprint_printing_error` | Kleine Kamer | `binary_sensor` | Status, device class | Geen bediening |
| Hervatten | `button.octoprint_resume_job` | Kleine Kamer | `button` | Status | `button.press` |
| Pauzeren | `button.octoprint_pause_job` | Kleine Kamer | `button` | Status | `button.press` |
| Stoppen | `button.octoprint_stop_job` | Kleine Kamer | `button` | Status | `button.press` |
| OctoPrint afsluiten | `button.octoprint_shutdown_system` | Kleine Kamer | `button` | Status | `button.press` |
| Raspberry Pi herstarten | `button.octoprint_reboot_system` | Kleine Kamer | `button` | Status | `button.press` |
| OctoPrint herstarten | `button.octoprint_restart_octoprint` | Kleine Kamer | `button` | Status | `button.press` |
| Doeltemperatuur printbed | `number.octoprint_bed_temperature` | Kleine Kamer | `number` | Minimum, maximum, stap, °C | `number.set_value`, `number.increment`, `number.decrement` |
| Doeltemperatuur extruder | `number.octoprint_extruder_temperature` | Kleine Kamer | `number` | Minimum, maximum, stap, °C | `number.set_value`, `number.increment`, `number.decrement` |
| Doeltemperatuur extruder 1 | `number.octoprint_extruder_1_temperature` | Kleine Kamer | `number` | Minimum, maximum, stap, °C | `number.set_value`, `number.increment`, `number.decrement` |
| Actuele printbedtemperatuur | `sensor.octoprint_actual_bed_temp` | Kleine Kamer | `sensor` | Temperatuur, °C, meetstatus | Geen bediening |
| Doeltemperatuur printbed | `sensor.octoprint_target_bed_temp` | Kleine Kamer | `sensor` | Temperatuur, °C | Geen bediening |
| Actuele nozzletemperatuur | `sensor.octoprint_actual_tool0_temp` | Kleine Kamer | `sensor` | Temperatuur, °C, meetstatus | Geen bediening |
| Doeltemperatuur nozzle | `sensor.octoprint_target_tool0_temp` | Kleine Kamer | `sensor` | Temperatuur, °C | Geen bediening |
| Actuele tweede nozzletemperatuur | `sensor.octoprint_actual_tool1_temp` | Kleine Kamer | `sensor` | Temperatuur, °C, meetstatus | Geen bediening |
| Doeltemperatuur tweede nozzle | `sensor.octoprint_target_tool1_temp` | Kleine Kamer | `sensor` | Temperatuur, °C | Geen bediening |
| Printerstatus | `sensor.octoprint_current_state` | Kleine Kamer | `sensor` | OctoPrint-status | Geen bediening |
| Printvoortgang | `sensor.octoprint_job_percentage` | Kleine Kamer | `sensor` | Percentage | Geen bediening |
| Geschatte eindtijd | `sensor.octoprint_estimated_finish_time` | Kleine Kamer | `sensor` | Tijdstip | Geen bediening |
| Starttijd | `sensor.octoprint_start_time` | Kleine Kamer | `sensor` | Tijdstip | Geen bediening |
| Actief bestand | `sensor.octoprint_current_file` | Kleine Kamer | `sensor` | Bestandsnaam | Geen bediening |
| Bestandsgrootte | `sensor.octoprint_current_file_size` | Kleine Kamer | `sensor` | Bestandsgrootte | Geen bediening |
| Webcam | `camera.octoprint_camera` | Kleine Kamer | `camera` | Streamstatus, afbeelding | `camera.play_stream`, `camera.snapshot` |

## Elegoo Saturn 3 Ultra 12K

| Friendly Name | Entity ID | Area | Domein | Beschikbare attributen | Ondersteunde services |
|---------------|-----------|------|---------|------------------------|-----------------------|
| Voedingsstatus | `binary_sensor.ac_037f7a6_1` | Garage | `binary_sensor` | Status | Geen bediening |
| Printervoeding | `switch.ac_037f7a6_1` | Garage | `switch` | Status | `switch.turn_on`, `switch.turn_off`, `switch.toggle` |
| Signaalsterkte | `sensor.ac_037f7a6_1_signaalsterkte` | Garage | `sensor` | Signaalsterkte in dBm | Geen bediening |

De huidige geregistreerde Elegoo-entiteiten zijn afkomstig van RFXtrx en leveren alleen voeding, voedingsstatus en signaalsterkte. Er zijn nog geen betrouwbare WiFi-, ChituManager- of HACS-telemetrie-entiteiten geregistreerd. De E9-kaart reserveert daarom ruimte voor toekomstige temperatuur-, printstatus-, voortgangs- en bestandsinformatie zonder nieuwe entity_id's te introduceren.
