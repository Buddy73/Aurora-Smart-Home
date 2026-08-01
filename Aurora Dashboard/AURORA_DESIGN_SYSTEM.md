# Aurora Design System v1.0

> De artistieke beslisregels voor sfeer en materiaalbeleving staan in
> [`docs/DESIGN_VISION_ADDENDUM.md`](docs/DESIGN_VISION_ADDENDUM.md). Dit addendum
> is leidend bij toekomstige ontwerpkeuzes, binnen de harde grenzen van
> prestaties, leesbaarheid en functionaliteit.

## Ontwerpprincipes

1. Informatiehiërarchie is belangrijker dan decoratie.
2. Iedere view deelt dezelfde componenttaal en gebruikt één eigen accent.
3. Storage Mode blijft de enige bron van waarheid.
4. Bestaande functionaliteit, entiteiten en navigatie blijven intact.
5. Effecten zijn licht genoeg voor telefoon, tablet en desktop.

## Design tokens

### Oppervlakken

- Pagina: Aurora Midnight `#061126` met een diffuse cyaan-, paarse en groene atmosferische lichtlaag.
- Kaart: gelaagd glas van `rgba(57,78,118,0.76)` naar `rgba(17,29,53,0.72)`.
- Kaart-rand: `rgba(203,231,255,0.23)`.
- Verhoogd oppervlak: `rgba(57,78,118,0.76)` met een zachte interne lichtbron.
- Primaire tekst: `rgba(255,255,255,0.94)`.
- Secundaire tekst: `rgba(255,255,255,0.68)`.

### Spacing

Gebruik een 4-pixelbasis: `4px` microafstand, `8px` compacte componenten, `12px` kaartonderdelen, `16px` kaartpadding/mobiele gutter, `24px` sectieafstand en `32px` grote desktopsectieafstand.

### Vorm en schaduw

- Kleine component: radius `14px`.
- Standaard kaart: radius `20px`.
- Hero Card: radius `26px`.
- Rand: `1px solid rgba(255,255,255,0.10)`.
- Schaduw: meerdere zachte dieptelagen met een minimale koele lichtinvloed.
- Blur: richtwaarde `18px`, alleen waar ondersteund en noodzakelijk.

### Typografie

Gebruik de afgeronde systeemfontstack uit de Branding Guide. Externe webfonts
zijn niet vereist; compatibiliteit en prestaties blijven leidend.

- Paginatitel: 28–32px, semibold.
- Sectietitel: 18–20px, semibold.
- Kaarttitel: 14–16px, medium/semibold.
- Hoofdwaarde: 24–32px, semibold.
- Secundaire tekst: 12–14px.

## Componenten

### Hero Card

- Eén Hero Card bovenaan een view wanneer er een duidelijke hoofdstatus is.
- Bevat maximaal vier kernwaarden of acties.
- Gebruikt bestaande entiteiten en acties; geen templates uitsluitend voor presentatie.
- Op mobiel stapelen waarden zonder horizontale overflow.

### Mushroom Cards

- Standaard voor entiteiten, lampen, media en compacte status.
- Gebruik het viewaccent uitsluitend voor actieve status en primaire actie.

### Bubble Cards

- Alleen voor navigatie, conform `STYLE_GUIDE.md`.

### Grafieken

- ApexCharts blijft de standaard.
- Maximaal twee accentseries per grafiek.
- Donkere transparante plotachtergrond en subtiele rasterlijnen.

### Camera's

- Camerabeeld heeft prioriteit boven decoratie.
- Geen blur of watermerk over live video.
- Status en titel staan in een afzonderlijke rustige laag.

## Responsive gedrag

- Desktop, 12 kolommen: Hero Cards mogen 12 kolommen gebruiken; details 6 of 4 kolommen.
- Tablet, 6 kolommen: Hero Cards gebruiken 6 kolommen; details 3 of 6 kolommen; touchdoelen minimaal 44px.
- Telefoon: één verticale stroom, geen horizontale scroll en primaire informatie vóór details.

## Theme Blueprint

De definitieve foundation staat in `themes/aurora.yaml`. De modulaire CSS-bron staat in `css/` en wordt samengebracht door `themes/aurora.css`.

Centraal in een Home Assistant-theme:

- Midnight-achtergrond, tekstkleuren en primaire accentkleur.
- Kaartachtergrond, rand, radius en schaduw waar ondersteund.
- Standaard typografie en sidebar-kleuren.

In Storage Mode per view:

- Viewtitel, icoon, achtergrondgradient en accent.
- Hero Card-samenstelling.
- Gridplaatsing en responsive card sizing.
- Logo-watermerkpositie, pas nadat het echte logo als lokale asset beschikbaar is.

Alleen lokaal met `card-mod`, indien al geïnstalleerd en aantoonbaar nodig:

- Beperkte backdrop blur.
- Specifieke kaart-rand of schaduw die het theme niet kan leveren.

Vermijd kaart-voor-kaart CSS. Centrale thematokens verdienen de voorkeur voor onderhoudbaarheid en prestaties.
