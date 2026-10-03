# Tokyma Website

Static [Hugo](https://gohugo.io/) site for **Tokyma**, a consultancy for machine translation and language technology (English-only). One of the things we edit is [Malinali](https://malinali.app/).

Same foundations as the Malinali website: Hugo, a small custom layout, GitHub Pages via Actions.

## Run locally

Install [Hugo Extended](https://gohugo.io/installation/), then:

```powershell
hugo server
```

Open http://localhost:1313/. Production canonical URLs use https://tokyma.io/.

## Build

```powershell
hugo --minify
```

Output is `public/` (gitignored). Production builds on push to `main` through `.github/workflows/hugo.yml`.

## Content

| Path | What |
| --- | --- |
| `content/_index.md` | Home metadata |
| `content/work.md` | Consulting, research, datasets |
| `content/notes/` | Research notes |
| `content/privacy.md` | Privacy |
| `layouts/` | Templates (nav, footer, article) |
| `static/css/site.css` | Shared styles |

To add a note, drop a Markdown file in `content/notes/` with `title`, `date`, and `description` in the front matter.

## Configuration

`hugo.toml` holds contact and product links:

- Email: `hello@tokyma.io`
- Malinali: https://malinali.app/
- This repo: https://github.com/malinali-app/tokyma-website

After the first GitHub Pages deploy, set the repo Pages source to **GitHub Actions**.
