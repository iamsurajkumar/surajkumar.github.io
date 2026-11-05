#!/usr/bin/env bash
# Copy the latest CV and paper PDFs from Dropbox into static/pdfs/.
# Run from anywhere; then review `git status`, commit and push to deploy.
set -euo pipefail

DBX="$HOME/Library/CloudStorage/Dropbox"
DEST="$(cd "$(dirname "$0")/.." && pwd)/static/pdfs"

copy() {  # copy <source> <published name>
  if [[ -f "$1" ]]; then cp "$1" "$DEST/$2"; echo "updated  $2"; else echo "MISSING  $1" >&2; exit 1; fi
}

copy "$DBX/PhD/others/Jobs Internships/CV/suraj-long-cv/CV_suraj_kumar_academic.pdf"          Suraj_Kumar_CV.pdf
copy "$DBX/PhD/Research/R12-Commodities Shocks/tex/paper_commodity_v6.pdf"                     Kumar_Commodity_Supply_News_Shocks.pdf
copy "$DBX/PhD/Research/R7-FX-Swap-Channel-Financial-Conditions/tex/paper_fci_spillovers.pdf"   Kumar_Lost_in_Transmission.pdf
