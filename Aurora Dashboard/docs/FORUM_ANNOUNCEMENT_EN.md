# Home Assistant Community Forum post — Aurora UI v1.1.0-rc.1

## Aurora UI — a modular, premium Home Assistant interface

Hi everyone,

I would like to share the first Release Candidate of **Aurora UI**: a
Storage Mode dashboard for Home Assistant, designed around calm daily control,
clear information hierarchy and a consistent Aurora visual language.

Aurora includes responsive views for energy, climate, lighting, media, cameras,
and hobby/garage. It uses standard Home Assistant functionality where possible,
with Mushroom Cards, Bubble Card, ApexCharts and card-mod as the main frontend
building blocks.

### Highlights

- Modular structure: Aurora Theme, Dashboard, Components and Effects are
  separated for reuse.
- Desktop, tablet and mobile layouts.
- Installation, user, troubleshooting, security and contribution documentation.
- Public demo mock-ups that contain no personal Home Assistant data.
- Storage Mode architecture, without a parallel YAML dashboard.

### Demo screens

Desktop:
https://raw.githubusercontent.com/Buddy73/Aurora-Smart-Home/main/Aurora%20Dashboard/docs/mockups/aurora-public-demo-desktop.png

Tablet:
https://raw.githubusercontent.com/Buddy73/Aurora-Smart-Home/main/Aurora%20Dashboard/docs/mockups/aurora-public-demo-tablet.png

Mobile:
https://raw.githubusercontent.com/Buddy73/Aurora-Smart-Home/main/Aurora%20Dashboard/docs/mockups/aurora-public-demo-mobile.png

### Repository

https://github.com/Buddy73/Aurora-Smart-Home

### Transparency

Aurora was developed collaboratively by its maintainer and OpenAI
Codex/ChatGPT. The design, dashboard configuration and live behaviour were
reviewed and validated in a real Home Assistant installation.

### Feedback welcome

This is a Release Candidate, so feedback on installation, responsive behaviour,
readability, performance and card compatibility is especially welcome.

Aurora is not a universal one-click import: Home Assistant entity IDs and
integrations are installation-specific, and users map their own devices by
following the installation guide.

Thanks for taking a look!
