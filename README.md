# Gorilla Troop

Static studio site for **Gorilla Troop**, a DBA of Gorilla Tech Advisors.

**Live domain:** [gorillatroop.studio](https://gorillatroop.studio)  
**Players:** [troop.games](https://troop.games)

Mail: `hello@` · `support@` · `press@` · `biz@` · `careers@` — all `@gorillatroop.studio`.

## Stack

- Pure static HTML + CSS
- No build step, no frameworks
- Fonts: Instrument Sans + Manrope
- Design tokens: navy `#071427`, gold `#c4a36a`, text `#e8eef6`, muted `#9aa8b8`

## Local preview

```bash
npx serve .
```

## Deploy on Railway

1. Connect this repository (`therichshowinfg/gorillatroop-studio`).
2. Railway uses the included `Dockerfile` (`nginx:alpine`, listens on `$PORT`).
3. Attach the custom domain `gorillatroop.studio`.

`package.json` is included if you prefer `npx serve` instead of nginx.

## Pages

| Path | Purpose |
|------|---------|
| `/` | Studio home — S2 Two Doors |
| `/about.html` | S3 Signal + Face |
| `/press.html` | Press kit (unblocks Docker COPY) |
| `/roadmap.html` | Upcoming titles on the two-month cadence |
| `/careers.html` | Hiring status |
| `/privacy.html` | Privacy stub |
| `/terms.html` | Terms stub |

Live titles are **SWIVEL** (`gyre.troop.games`) and **ORCHARD** (`orchard.troop.games`). Next title is **WRAP**, 20 Nov 2026.
