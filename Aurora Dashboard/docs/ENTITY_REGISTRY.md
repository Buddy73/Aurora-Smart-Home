# Aurora Entity Registry

## Bronnen

- `entities.md` is de enige centrale database voor fysieke entiteiten en hoofdentiteiten.
- `helpers.md` is de enige centrale database voor helpers en groepen.
- De Home Assistant Entity Registry blijft leidend voor runtime device-ID’s, area’s en platformmetadata.

Alle 86 entity_id’s die in Aurora v1.0.0 worden gebruikt, zijn gecontroleerd en staan in `entities.md` of `helpers.md`.

## Device-ID-beleid

Home Assistant device-ID’s zijn installatiegebonden en kunnen na het opnieuw koppelen van een integratie veranderen. Om privacy- en veiligheidsredenen worden device-ID’s niet in de publieke repository opgeslagen. Dashboardkaarten gebruiken uitsluitend entity_id’s.

Printerapparaten:

| Apparaat | Area | Integratie |
|---|---|---|
| Tronxy X5SA SE / OctoPrint | Hobbyruimte | OctoPrint |
| Tronxy printervoeding | Hobbyruimte | ZHA |
| Tronxy printerverlichting | Hobbyruimte | Magic Home |
| Elegoo Saturn 3 Ultra 12K | Garage | RFXtrx |

## Domeinen en bediening

| Domein | Belangrijkste attributen | Ondersteunde basisservices |
|---|---|---|
| `light` | aan/uit, helderheid, kleur indien ondersteund | `light.turn_on`, `light.turn_off`, `light.toggle` |
| `switch` | aan/uit | `switch.turn_on`, `switch.turn_off`, `switch.toggle` |
| `cover` | status, positie indien ondersteund | openen, stoppen, sluiten |
| `climate` | temperatuur, HVAC, preset, fan en swing per apparaat | ondersteunde climate-services |
| `media_player` | status, titel, artiest, bron en volume per apparaat | ondersteunde media-services |
| `camera` | status, stilstaand beeld of stream | meer-info, stream en snapshot indien ondersteund |
| `sensor` | status en apparaatspecifieke meetattributen | geen directe bediening |
| `binary_sensor` | aan/uit-status en device class | geen directe bediening |
| `button` | uitvoerbare apparaatopdracht | `button.press` |
| `number` | minimum, maximum, stap en eenheid | `number.set_value` |
| `script` | scriptstatus | `script.turn_on` |

## Integratiegroepen

- Energie: GoodWe SEMS, HomeWizard P1 en gasmeter.
- Klimaat: Nest en Daikin.
- Media: Philips TV, Samsung TV, Spotify, Nest Hub, Nest Mini en Chromecast.
- Camera’s: Ring-camera’s en OctoPrint-camera.
- Hobby: OctoPrint, Tronxy, ZHA, Magic Home en Elegoo/RFXtrx.
- Buiten: Ring, RFXtrx en tuinverlichting.

## Onderhoud

Controleer na het hernoemen, opnieuw koppelen of vervangen van een apparaat:

1. de Home Assistant Entity Registry;
2. `entities.md`;
3. de actieve Storage Mode-configuratie;
4. desktop-, tablet- en mobiele rendering.

Verzin nooit een device-ID of entity_id.
