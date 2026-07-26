# Aurora Branding Guide v1.0

## Merkpositie

Aurora is een rustig, premium Smart Home-product: modern, professioneel en tijdloos. De visuele identiteit ondersteunt de bediening en concurreert nooit met de inhoud.

## Definitieve richting

Concept A — Modern Premium is de definitieve richting. Het combineert een diep donkerblauwe basis, subtiele Noorderlicht-gradients, terughoudend glassmorphism en één helder kleuraccent per view.

## Kleurenpalet

| Token | Waarde | Gebruik |
|---|---:|---|
| Aurora Midnight | `#0B1020` | Hoofdachtergrond |
| Aurora Blue | `#2F6FFF` | Home en primaire acties |
| Aurora Cyan | `#39C6FF` | Klimaat en informatie |
| Aurora Emerald | `#2ED573` | Energie en positieve status |
| Aurora Purple | `#7A5CFF` | Media |
| Aurora Amber | `#FFB347` | Verlichting |
| Aurora Glass | `rgba(255,255,255,0.08)` | Kaartoppervlak |

Gebruik kleur als betekenisvol accent. Grote, volledig verzadigde kleurvlakken zijn niet toegestaan.

## Achtergronden per view

- Home: Midnight met een zachte Aurora Blue-ochtendgloed.
- Verlichting: donker antraciet met een subtiele Amber-gloed.
- Woonkamer: warm grafiet met een rustige dieptewerking.
- Klimaat: Midnight met een Cyan/blauwgroene gloed.
- Energie: Midnight met Emerald/Cyan-gloed.
- Media: donker paarsblauw met een zachte Purple-gloed.
- Camera's: donker carbon-grijs met minimale koele gloed.

Geen foto's, video-achtergronden, drukke patronen of merkbare animaties.

## Logo

Gebruik uitsluitend de minimalistische Aurora-dashboardvariant als watermerk.

- Dekking: 5–8%.
- Effect: lichte vervaging; geen animatie.
- Home: gecentreerd.
- Verlichting: onder midden.
- Woonkamer: rechtsmidden.
- Klimaat: linksboven.
- Energie: rechtsboven.
- Media: rechtsonder.
- Camera's: linksonder.

Het goedgekeurde transparante logo staat in `assets/logo/aurora-logo.png`. De geoptimaliseerde watermerkvariant staat in `assets/logo/aurora-logo-watermark.png` en gebruikt maximaal 8% dekking. Home Assistant laadt deze runtime-asset via `/local/aurora/aurora-logo-v1.png`.

## Iconografie

- Gebruik Material Design Icons.
- Gebruik één functie-icoon consequent in alle views.
- Gebruik `mdi:string-lights` voor prikkabelverlichting, `mdi:wall-sconce-round` voor de lamp onder het afdak, `mdi:solar-power` voor PV, `mdi:thermometer` voor temperatuur, `mdi:television` voor tv en `mdi:cctv` voor camera's.
- Een actieve status krijgt het viewaccent; inactief blijft neutraal.

## Schrijfstijl

- Nederlandse titels en korte labels.
- Persoonlijke begroeting: `Goedemorgen, <naam>`.
- Geen technische entity_id's in de interface.
- Status vóór uitleg; vermijd overbodige tekst.

## Niet toegestaan

- Felle neonvlakken of harde gradients.
- Meerdere accentkleuren binnen één component.
- Zware blur, grote achtergrondafbeeldingen of bewegende effecten.
- Branding die bediening, camerabeeld of grafieken minder leesbaar maakt.
