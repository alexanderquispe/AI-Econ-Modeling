#!/usr/bin/env bash
# Download the open-access copies of every paper on the course reading list.
# Re-runnable: files already present are skipped. Gated papers are listed in
# README.md with their links and are never fetched here.
set -uo pipefail
cd "$(dirname "$0")"

UA='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126 Safari/537.36'
CACHE="$HOME/Documents/arXiv-2605.25438v1/papers"

ok=0; skip=0; fail=0
declare -a FAILED=()

get () {  # get <outfile> <url>
  local out="$1" url="$2"
  if [[ -s "$out" ]]; then printf '  = %s\n' "$out"; ((skip++)); return; fi
  local code
  code=$(curl -sS -L -m 90 -A "$UA" -o "$out.part" -w '%{http_code}' "$url" 2>/dev/null)
  if [[ "$code" == 200 ]] && [[ -s "$out.part" ]] && \
     [[ "$(head -c 4 "$out.part")" == "%PDF" ]]; then
    mv "$out.part" "$out"; printf '  + %s\n' "$out"; ((ok++))
  else
    rm -f "$out.part"; printf '  ! %s (HTTP %s)\n' "$out" "$code"; ((fail++)); FAILED+=("$out")
  fi
  sleep 1
}

copy () {  # copy <outfile> <cachefile>
  local out="$1" src="$CACHE/$2"
  if [[ -s "$out" ]]; then printf '  = %s\n' "$out"; ((skip++)); return; fi
  if [[ -s "$src" ]]; then cp "$src" "$out"; printf '  c %s (local cache)\n' "$out"; ((ok++));
  else printf '  ! %s (not in local cache)\n' "$out"; ((fail++)); FAILED+=("$out"); fi
}

echo "== Core course readings =="
get  01-aouad-lykouris-zhong-2026-productivity-paradoxes.pdf https://arxiv.org/pdf/2605.11350
get  02-quispe-xu-2026-agentic-delegation-language-frontier.pdf          https://arxiv.org/pdf/2605.25438
copy 03-jovanovic-nyarko-1994-bayesian-foundations-w4739.pdf          jovanovic1996learning.pdf
copy 04-acemoglu-restrepo-2018-race-man-machine.pdf          acemoglu2018artificial.pdf
get  05-agrawal-gans-goldfarb-2025-bicycles-for-the-mind.pdf https://www.nber.org/system/files/working_papers/w34034/w34034.pdf
get  06-ganuthula-singh-2026-paradox-of-augmentation.pdf     https://onlinelibrary.wiley.com/doi/pdfdirect/10.1155/hbe2/8303770

echo "== Additions proposed by the audit =="
get  07-acemoglu-kong-ozdaglar-2026-knowledge-collapse.pdf   "https://economics.mit.edu/sites/default/files/2026-05/AI%2C%20Human%20Cognition%20and%20Knowledge%20Collapse%2005-05-26.pdf"
get  08-yin-su-li-2026-incentive-collapse-paradox.pdf        https://arxiv.org/pdf/2603.27049
get  09-adaptive-contracts-ai-delegation-2026.pdf            https://arxiv.org/pdf/2603.17212
get  10-delegation-verification-dilemma-2026.pdf             https://arxiv.org/pdf/2605.21351

echo "== Supplementary readings =="
get  11-chen-meng-2026-ai-levels-playing-field.pdf           https://arxiv.org/pdf/2603.05565
get  12-shen-tamkin-2026-ai-skill-formation.pdf              https://arxiv.org/pdf/2601.20245
copy 13-acemoglu-2024-simple-macroeconomics-of-ai.pdf        acemoglu2025simple.pdf
copy 14-ide-talamas-2025-ai-knowledge-economy.pdf            idetalamas2025.pdf
get  15-garicano-2000-hierarchies-knowledge.pdf              https://personal.lse.ac.uk/garicano/hierarchies.pdf

echo "== Empirical session (RCTs cited by the theory) =="
copy 16-brynjolfsson-li-raymond-2025-generative-ai-at-work.pdf brynjolfsson2024generative.pdf
copy 17-peng-et-al-2023-copilot-rct.pdf                        peng2023impact.pdf
get  18-metr-2025-developer-productivity-rct.pdf               https://arxiv.org/pdf/2507.09089
get  19-dellacqua-et-al-2023-jagged-frontier.pdf               https://www.hbs.edu/ris/Publication%20Files/24-013_d9b45b68-9e74-42d6-a1c6-c72fb70c7282.pdf

echo "== Secondary candidates =="
copy 20-gans-goldfarb-2026-o-ring-automation.pdf             gans2026oring.pdf
copy 21-catalini-hui-wu-2026-simple-economics-of-agi.pdf     catalini2026agi.pdf
get  22-scaffold-stays-on-2026-elite-skill-formation.pdf     https://arxiv.org/pdf/2606.06253

echo "== Generative AI in economic research =="
get  23-korinek-2023-language-models-cognitive-automation-w30957.pdf https://www.nber.org/system/files/working_papers/w30957/w30957.pdf

printf '\nDownloaded %d · already present %d · failed %d\n' "$ok" "$skip" "$fail"
if ((fail)); then printf 'Not obtained:\n'; printf '  - %s\n' "${FAILED[@]}"; fi
