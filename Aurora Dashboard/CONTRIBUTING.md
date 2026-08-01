# Bijdragen aan Aurora

> Lees eerst de [Aurora Developer Handbook](DEVELOPER_HANDBOOK.md). Die bevat
> de bindende ontwikkel-, architectuur- en releaseafspraken.

> Lees eerst de [Aurora Developer Handbook](DEVELOPER_HANDBOOK.md). Dit document
> beschrijft de praktische bijdrageworkflow.

Bedankt dat je Aurora wilt verbeteren.

## Uitgangspunten

- Behoud Storage Mode als dashboardbron.
- Gebruik bestaande Home Assistant-functionaliteit waar mogelijk.
- Voeg geen persoonlijke entity-ID’s, screenshots of lokale paden toe.
- Lever kleine, controleerbare wijzigingen.
- Behoud Nederlandse UI-labels en de Aurora Design Standard.

## Werkwijze

1. Maak een featurebranch.
2. Beschrijf het probleem en de gewenste gebruikerswaarde.
3. Pas documentatie en voorbeelden mee aan.
4. Controleer desktop, tablet en telefoon.
5. Controleer Markdownlinks, YAML en shellscripts.
6. Open een pull request met screenshots die volledig geanonimiseerd zijn.

## Wijzigingen aan styling

Plaats tokens in Theme, layout in Dashboard, herbruikbare kaarten in Components
en uitsluitend optionele decoratie in Effects. Vermijd kaart-voor-kaart-CSS.

## Entiteiten en helpers

Voorbeelden mogen geen aannames doen over entity-ID’s van andere installaties.
Documenteer vereiste domeinen en capabilities in plaats van persoonlijke IDs.

## Commitstijl

Gebruik korte conventionele commits, bijvoorbeeld:

```text
docs: clarify Storage Mode installation
fix(theme): improve mobile contrast
feat(components): add reusable climate card guidance
```
