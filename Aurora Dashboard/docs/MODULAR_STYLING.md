# Aurora Modular Styling

> De architectuurkeuzes en pakketgrenzen worden centraal beschreven in de
> [Aurora Developer Handbook](../DEVELOPER_HANDBOOK.md).

> Zie de [Aurora Developer Handbook](../DEVELOPER_HANDBOOK.md) voor de
> architectuurregels die bij deze modulaire styling horen.

Project Polaris separates visual styling into four independent packages. The packages contain no entities, helpers or dashboard functionality.

## Packages

| Package | Entry point | Purpose |
|---|---|---|
| Theme | `css/theme.css` | Tokens, rounded typography, palette and global accessibility |
| Dashboard | `css/dashboard.css` | Aurora background, Hero atmosphere, layout and responsive behaviour |
| Components | `css/components.css` | Cards, buttons and navigation without decorative effects |
| Effects | `css/effects.css` | Optional glass reflections, Aurora glow and restrained motion |

The complete bundle is available through `themes/aurora.css`. Home Assistant uses `themes/aurora.yaml` natively; the CSS packages are reference and reusable sources for frontend integrations that support CSS.

## Usage profiles

### Theme only

Use `themes/aurora.yaml` or `css/theme.css`. This changes the palette, typography and core Home Assistant surfaces without changing dashboard layout.

### Components without atmosphere

Combine `css/theme.css` and `css/components.css`. Cards and controls receive the Aurora component language without the background image, glow or animation.

### Full Polaris experience

Load `themes/aurora.css`, or combine all four entry points in this order:

1. `css/theme.css`
2. `css/dashboard.css`
3. `css/components.css`
4. `css/effects.css`

## Assets

- Official logo: `assets/logo/aurora-logo.png`
- Watermark logo: `assets/logo/aurora-logo-watermark.png`
- Polaris background: `assets/backgrounds/aurora-polaris-background.png`

Assets remain separate from CSS so installations can replace them without forking component styles.

## Compatibility rules

- Storage Mode remains the dashboard source of truth.
- Styling never changes entity IDs, services or card actions.
- Effects are optional and must respect `prefers-reduced-motion`.
- Camera images and charts retain content priority over decorative layers.
- Theme and component packages must remain usable without the background asset.

## Storage Mode installer

`scripts/polaris-storage-filter.jq` updates only the visual `background` and
Hero `card_mod.style` fields of existing views. The wrapper
`scripts/apply-polaris-storage.sh` creates a backup before applying the filter.
It does not create, remove or change cards, entities, actions or sections.
