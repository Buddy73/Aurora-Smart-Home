# Aurora Implementatie v1.0 RC

## Fase E1 — Project Foundation

De Aurora-foundation centraliseert het visuele systeem zonder een parallel YAML-dashboard te introduceren.

### Home Assistant-theme

- `themes/aurora.yaml` bevat het definitieve donkere Aurora-theme.
- Het theme definieert kleuren, typografie, spacingtokens, radii, schaduwen, iconstatussen, navigatiekleuren en Aurora-gradients.
- Alleen door Home Assistant ondersteunde themevariabelen bepalen de live basisweergave; extra Aurora-tokens zijn beschikbaar voor compatibele kaarten en gecontroleerde styling.

### CSS-architectuur

- `themes/aurora.css` is het centrale manifest.
- `css/base.css` bevat globale tokens, typografie en focusstijl.
- `css/cards.css` bevat glasoppervlakken en kaartvarianten.
- `css/buttons.css` bevat primaire en rustige bedieningsstijlen.
- `css/sidebar.css` bevat navigatie- en geselecteerde-statusstijlen.
- `css/animations.css` bevat uitsluitend een korte entreeanimatie en respecteert `prefers-reduced-motion`.
- `css/responsive.css` bevat 12-koloms desktop-, 6-koloms tablet- en enkelkoloms mobiele regels.

CSS wordt niet als losse Lovelace-resource geregistreerd. Home Assistant ondersteunt geen generieke CSS-resource; registratie gebeurt alleen later via een aantoonbaar compatibele frontend-integratie.

### Assets

De centrale structuur staat in `assets/`:

- `logo/`
- `backgrounds/`
- `icons/`
- `wallpapers/`
- `fonts/`
- `branding/`

Het goedgekeurde logo en de 8%-watermerkvariant staan in `assets/logo/`. De actieve Home Assistant-runtimekopie blijft beschikbaar via `/local/aurora/aurora-logo-v1.png`.

### Architectuur

Storage Mode blijft de enige bron van waarheid voor dashboardviews, kaarten en navigatie. Het Aurora-theme is een gedeelde frontendlaag en creëert geen tweede dashboardconfiguratie.

### Live implementatiestatus

- `/config/configuration.yaml` laadt de bestaande thememap via `!include_dir_merge_named themes`.
- `themes/aurora.yaml` is geïnstalleerd als `/config/themes/aurora.yaml`.
- De CSS-bron is gespiegeld naar `/config/www/aurora/css/` met het manifest onder `/config/www/aurora/themes/aurora.css`; deze bestanden zijn niet als Lovelace-resource geregistreerd.
- `frontend.reload_themes` is zonder fout uitgevoerd.
- Alle zeven Aurora Storage Mode-views gebruiken het theme `Aurora`.
- De volledige Home Assistant-configuratiecontrole is geslaagd zonder herstart.

## Fase E2 — Home Dashboard

De Home-view is rechtstreeks in de bestaande Storage Mode-configuratie opgebouwd. Er is geen parallel YAML-dashboard aangemaakt.

### Onderdelen

- Persoonlijke, tijdsafhankelijke begroeting voor de bewoner.
- Weersverwachting met Nederlandse datum en actuele tijd.
- Huisstatus voor verlichting, rolluiken, thermostaat en netvermogen.
- Favorieten voor eetkamer, keukenrolluiken, televisie en voordeurcamera.
- Snelle acties voor slaapkamerverlichting, eetkamerrolluik en beide Daikin-airco's.
- Scènebediening via de bestaande scripts `Thuis`, `Weg`, `Nacht` en `Alles uit`.
- Compacte widgets voor zonneproductie, importmeter, gasverbruik en woonkamertemperatuur.
- Livebeelden van voordeur, voorkant, achtertuin en woonkamer.

### Kwaliteitscontrole

- Alle gebruikte entity_id's zijn gedocumenteerd in `entities.md` of `helpers.md`.
- Niet-bestaande daghelpers zijn niet gebruikt; de live beschikbare import- en gassensoren worden getoond.
- Geen nieuwe helpers, templates, scripts of automations toegevoegd.
- Geen meldingen voor ontbrekende entiteiten in de Home-view.
- Responsive gecontroleerd op desktop (1920×1080), tablet (1024×768) en telefoon (390×844).
- De tijdens ontwikkeling gemaakte screenshots zijn om privacyredenen niet gepubliceerd.
- Voor deze Storage Mode-wijziging is geen Home Assistant-herstart nodig.

## Fase E3 — Verlichting

De Verlichting-view is rechtstreeks in de bestaande Storage Mode-configuratie uitgebreid.

### Onderdelen

- Compacte kamerkaarten voor woonkamer, eetkamer, keuken en slaapkamer.
- Dimmers voor de gedocumenteerde groepen, keukenverlichting en woonkamerwandlamp.
- Aan/uit-bediening voor de niet-dimbare tafellamp, stalamp, Ambilight en tuinverlichting.
- Centrale acties `Alles aan` en `Alles uit`; `Alles uit` gebruikt het bestaande script.
- Scènebediening via de bestaande scripts `Thuis`, `Weg` en `Nacht`.
- Individuele bediening voor woonkamer, eetkamer, keuken, slaapkamer en logeerkamer.
- De geïntegreerde voor- en achtertuincameralampen zijn uitgesloten van deze view.

### Kwaliteitscontrole

- Alleen entity_id's uit `entities.md` en `helpers.md` zijn gebruikt.
- Geen nieuwe helpers, scripts, templatesensors of automations toegevoegd.
- De niet-dimbare stalamp en tafellamp gebruiken uitsluitend een toggle.
- Geen ontbrekende-entiteits- of configuratiefouten in de view.
- Responsive gecontroleerd op desktop (1920×1080), tablet (1024×768) en telefoon (390×844).
- De Verlichting-view is responsief gecontroleerd zonder persoonlijke screenshots te publiceren.
- Geen Home Assistant-herstart nodig.

## Fase E4 — Woonkamer

De Woonkamer-view is rechtstreeks in de bestaande Storage Mode-configuratie vernieuwd.

### Onderdelen

- Vier compacte statuskaarten voor verlichting, temperatuur, media en rolluiken.
- Verlichting met de woonkamerlichtgroep, wandlampdimmer en compacte lampbediening.
- Een grote TV-kaart en ruime Mushroom-mediakaarten voor Spotify en Nest Hub, met live media-informatie en beschikbare bediening.
- Een grote klimaatkaart voor de woonkamerairco, aangevuld met actuele temperatuur en Nest-bediening.
- Rolluiken met groepsbediening en afzonderlijke bediening voor woonkamer en tuindeuren.
- Scènebediening via de bestaande scripts `Thuis`, `Weg`, `Nacht` en `Alles uit`.
- Snelle bediening voor TV uit, alle woonkamerlampen uit, rolluiken sluiten en Spotify hervatten.

### Kwaliteitscontrole

- Alleen entity_id's uit `entities.md` en `helpers.md` zijn gebruikt.
- De verouderde TV-entiteit en oude wandlampschakelaar zijn niet meer in deze view aanwezig.
- Geen nieuwe helpers, scripts, templatesensors of automations toegevoegd.
- Geen ontbrekende-entiteits- of configuratiefouten in de view.
- Responsive gecontroleerd op desktop (1920×1080), tablet (1024×768) en telefoon (390×844).
- De Woonkamer-view is responsief gecontroleerd zonder persoonlijke screenshots te publiceren.
- De warme achtergrondgloed is circa 20% subtieler gemaakt, zodat de kaarten sterker naar voren komen.
- Klimaat, Rolluiken en Scènes hebben extra verticale ademruimte gekregen.
- De temperatuurstatus toont de actuele waarde met het comfortlabel; de groepskaart voor rolluiken toont de actuele openingspositie prominent.
- De Spotify-kaart is verhoogd tot vier rasterrijen en vormt daarmee het visuele middelpunt van de mediakolom.
- De mediastatus toont live `Spotify · titel` en valt bij stilstand terug op `Spotify · Inactief`.
- Het Aurora-watermerk is vergroot en met een extra donkere transparantielaag verder naar de achtergrond gebracht.
- Nest Hub is correct geconfigureerd, maar rapporteert momenteel de live status `Niet beschikbaar`.
- Er is geen gedocumenteerde luchtvochtigheidssensor; daarom is geen placeholder of berekende waarde toegevoegd.
- Zonder gedocumenteerde telhelper toont de verlichtingsstatus de groepsstatus in plaats van een berekend aantal lampen.
- De Woonkamer-view is na visuele controle vastgesteld als referentie voor volgende Aurora-views.
- De Klimaat-view volgt bij de volgende ontwikkelstap hetzelfde patroon: header, statusoverzicht, hoofdkaart, subkaarten en snelle bediening.
- Geen Home Assistant-herstart nodig.

## Fase E5 — Klimaat

De Klimaat-view is rechtstreeks in de bestaande Storage Mode-configuratie vernieuwd en volgt de goedgekeurde Woonkamer-view als referentie.

### Onderdelen

- Vier statuskaarten voor gemiddelde binnentemperatuur, beide Daikin-airco's en de Nest-thermostaat.
- Een dominante comfortkaart voor de woonkamerairco met doeltemperatuur, HVAC-bediening, ventilatorstatus en beide swingrichtingen.
- Afzonderlijke bediening voor de slaapkamerairco en centrale Nest-thermostaat.
- Compacte ruimtestatus voor woonkamer, slaapkamer en buitentemperatuur.
- Klimaatprofielen voor Comfort, Nacht, Afwezig en Automatisch via rechtstreeks ondersteunde climate-services.
- Snelle bediening voor beide airco's, Nest-verwarming en het uitschakelen van alle klimaatapparaten.

### Kwaliteitscontrole

- Alleen gedocumenteerde klimaat- en sensorentiteiten zijn gebruikt.
- De opgegeven HVAC-, preset-, ventilator- en swing-modi zijn gerespecteerd.
- Geen nieuwe helpers, scripts, automations of template-sensoren toegevoegd.
- Geen ontbrekende-entiteits- of configuratiefouten in de live view.
- Responsive gecontroleerd op desktop (1920×1080), tablet (1024×768) en telefoon (390×844).
- De Klimaat-view is responsief gecontroleerd zonder persoonlijke screenshots te publiceren.
- Luchtvochtigheid, logeerkamerklimaat en schema zijn niet toegevoegd omdat hiervoor geen gedocumenteerde entiteiten bestaan.
- De bestaande HACS-resource `config-template-card` meldt een verouderde Lit-import; dit staat los van de Klimaat-view.
- Geen Home Assistant-herstart nodig.

## Fase E6 — Energie Redesign

De bestaande Energie-view is in Storage Mode geherstructureerd tot het Aurora Premium Energy Dashboard, zonder bestaande fysieke entiteiten te wijzigen.

### Onderdelen

- Eén compacte statusbalk met stroomverbruik, PV-opwekking, dynamische netrichting en gasmeter.
- De grafische Home Assistant-energiebalans als zelfstandig centraal live-overzicht.
- Een beeldvullende ApexCharts-hoofdgrafiek voor PV, netafname, teruglevering en gas, met interactieve legenda en Nu-indicator.
- GoodWe uitsluitend voor omvormerstatus, temperatuur, opbrengsten, inkomsten en de twee actieve PV-strings.
- HomeWizard P1 uitsluitend voor spanning, DSMR, verbinding, tarief en import-/exportmeterstanden.
- Een volwaardige gassectie met dag-, week- en maandgrafieken.
- Elektriciteitshistorie voor dag, week en maand met import, export en PV-opwekking.

### Bewuste beperkingen

- Er bestaat geen live sensor voor totaal huishoudelijk verbruik. De actuele status wordt daarom veilig berekend uit PV plus P1-netvermogen; voor een historische ApexCharts-serie is een afzonderlijke template-sensor nodig.
- P1-stroom, P1-frequentie, power factor en GoodWe-efficiëntie zijn niet live beschikbaar en zijn niet verzonnen.
- Gas-dag/week/maandhelpers ontbreken; de grafieken gebruiken de bestaande langetermijnstatistieken van `sensor.gas_meter_gas`.
- De perioden 24 uur, 7 dagen en 30 dagen zijn zichtbaar als vaste dashboardniveaus. Een interactieve wissel binnen één kaart vereist een gedocumenteerde selectiehelper of extra kaart en is daarom niet toegevoegd.

### Kwaliteitscontrole

- Alleen gedocumenteerde, live aanwezige entity_id's zijn gebruikt.
- Dubbele actuele kaarten en de eerdere sectie Actuele totalen zijn verwijderd.
- Geen ontbrekende-entiteits-, configuratie- of ApexCharts-fouten na een schone reload.
- De grafieklegenda kan series afzonderlijk tonen en verbergen.
- De vroegere referentie-YAML is bij de v1.0.0-opschoning verwijderd; Storage Mode is de enige actieve bron.
- Geen Home Assistant-herstart nodig voor deze Storage Mode-wijziging.
