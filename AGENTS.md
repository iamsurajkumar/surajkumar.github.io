# surajkumar.me — personal academic website

Hugo site (PaperMod theme) for Suraj Kumar, Ph.D. student in Economics at Boston College.
Repo: `iamsurajkumar/surajkumar.github.io` (public). Local clone: `~/repos/surajkumar.github.io`.

## Deploy

- Every push to `main` triggers `.github/workflows/hugo.yml`, which builds and deploys to
  GitHub Pages in about a minute. Cloudflare sits in front; browsers may cache pages for up to
  10 minutes (hard refresh to check).
- `public/` is build output and is **not tracked** (see `.gitignore`). Never commit it: a tracked
  `public/` kept deleted pages alive on the live site.
- The repo is public, so anything pushed, on any branch, is publicly visible on GitHub. Ask
  before pushing unpublished drafts.
- After a push, verify: `gh run watch <id> --repo iamsurajkumar/surajkumar.github.io --exit-status`,
  then `curl -s -o /dev/null -w '%{http_code}' https://surajkumar.me/<path>` for each changed page.

## Build and preview locally

```bash
hugo server            # http://localhost:1313
hugo --quiet -d /tmp/site_build   # one-off build check; do not build into public/ in the repo
```

## Where things live

| What | Where |
|---|---|
| Homepage bio, buttons (CV, Academic Research, GitHub), site description, menu | `config.yml` (`params.profileMode`, `params.description`, `menu.main`) |
| About page | `content/about.md` |
| Papers | `content/academic-research/<slug>.md` |
| Paper card images | `static/images/papers/<slug>.png` |
| Hosted PDFs (CV, papers) | `static/pdfs/` |
| Market research notes, blog | `content/market-research/`, `content/blog/` |

## Updating the CV or paper PDFs

The PDFs are copies of files kept in Dropbox. They are the source; edit there, never here.

```bash
scripts/sync_pdfs.sh   # copies the CV and paper PDFs from Dropbox into static/pdfs/
git status             # only changed files show up
```

| Published file | Source in `~/Library/CloudStorage/Dropbox/` |
|---|---|
| `Suraj_Kumar_CV.pdf` | `PhD/others/Jobs Internships/CV/suraj-long-cv/CV_suraj_kumar_academic.pdf` (built from `CV_suraj_kumar_academic.tex` with `latexmk -pdf`) |
| `Kumar_Commodity_Supply_News_Shocks.pdf` | `PhD/Research/R12-Commodities Shocks/tex/paper_commodity_v6.pdf` |
| `Kumar_Lost_in_Transmission.pdf` | `PhD/Research/R7-FX-Swap-Channel-Financial-Conditions/tex/paper_fci_spillovers.pdf` |

If a paper's source file is renamed (e.g. `paper_commodity_v7.pdf`), update `scripts/sync_pdfs.sh`.
Before publishing a new paper PDF, check it has no visible drafting notes:
`pdftotext file.pdf - | grep -cE 'AI:|SK:|DEEPSEEK|TODO'` should print 0.

The Chronos paper ("Macroeconomics with Foundation Models", with Pablo Guerrón-Quintana and
Zhihang Liang) is **not hosted here**. It links to the Google Drive copy on Prof. Guerrón-Quintana's
site (https://sites.google.com/site/pabloaguerronquintana/home/research) so co-authors control
the public version. Do not upload a copy from the `Macross/` project folder.

When a paper's draft date or abstract changes, update its page too (`date`, the italic status
line, and the abstract), and keep the CV's Research section and `content/about.md` consistent.

## Adding a paper

Create `content/academic-research/<slug>.md`:

```yaml
---
title: "Full Paper Title"
date: 2026-10-27            # draft date
draft: false
weight: 2                   # list order: working papers first, then work in progress
author: ["Suraj Kumar"]     # co-authors in paper order
Summary: "Working paper. One sentence on what the paper does."
cover:
    image: "/images/papers/<slug>.png"
    alt: "What the figure shows"
    relative: false
---

*Working paper, first draft, October 2026*

#### Download
[Paper (PDF)](/pdfs/<File>.pdf)

---

#### Abstract
...
```

Then add the PDF to `scripts/sync_pdfs.sh`, add the paper to `content/about.md` (Research
section), and add it to the CV.

Card images: one key figure from the paper, padded to 1400x700 on white, saved as **RGB** PNG
(never RGBA). Check with `file static/images/papers/*.png`. Avoid figures copied from other
people's papers (e.g. the Chronos-2 architecture diagram).

## Content conventions

- Status labels: "Working paper" or "Work in progress"; upcoming talks marked "(upcoming)".
- Advisor: Prof. Pablo Guerrón-Quintana (spelled with accents).
- Keep the homepage bio, About page and CV in agreement on titles, dates and job titles.
