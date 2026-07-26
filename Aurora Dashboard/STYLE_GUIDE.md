# Aurora Dashboard Style Guide

De volledige visuele specificatie staat in `AURORA_BRANDING.md`, `AURORA_DESIGN_SYSTEM.md` en `UI_STYLE_GUIDE.md`.

## Dashboardregels

- Gebruik Mushroom Cards.
- Gebruik Bubble Cards alleen voor navigatie.
- Gebruik Nederlandse titels.
- Gebruik Sections View.
- Gebruik geen entity_id's die niet in `entities.md` of `helpers.md` staan.
- Gebruik geen verouderde of deprecated kaarten.
- Gebruik ApexCharts voor grafieken.
- Gebruik `card-mod` alleen indien nodig.
- Gebruik zoveel mogelijk bestaande helpers.
- Voeg nooit YAML toe die Home Assistant-waarschuwingen veroorzaakt.
- Gebruik Aurora Midnight (`#0B1020`) als basis en maximaal één viewaccent.
- Gebruik `themes/aurora.yaml` als centrale bron voor globale kleuren, typografie, spacing, radius, schaduwen en iconstatussen.
- Laad losse CSS-modules niet rechtstreeks als Lovelace-resource; gebruik `themes/aurora.css` uitsluitend via een aantoonbaar compatibele frontend-integratie.
- Gebruik subtiele glassmorphism met een transparante fallback.
- Gebruik een 4px-spacingbasis en standaard kaartradius van 18px.
- Storage Mode is de enige bron van waarheid voor het actieve dashboard.
- Gebruik `Goedemorgen, <naam>` als gepersonaliseerde ochtendbegroeting.
