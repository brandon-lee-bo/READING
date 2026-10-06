#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

download_pdf() {
  local url="$1"
  local destination="$2"
  local temporary="${destination}.part"

  if [[ -f "$destination" ]] && [[ "$(head -c 4 "$destination")" == '%PDF' ]]; then
    printf 'Already present: %s\n' "$destination"
    return
  fi

  printf 'Downloading: %s\n' "$destination"
  curl --fail --location --retry 3 --connect-timeout 15 --output "$temporary" "$url"
  if [[ "$(head -c 4 "$temporary")" != '%PDF' ]]; then
    rm -f "$temporary"
    printf 'Not a PDF: %s\n' "$url" >&2
    return 1
  fi
  mv "$temporary" "$destination"
}

download_pdf 'https://seonjinna.github.io/assets/pdf/MLSys25_FlexInfer.pdf' 'ai/FlexInfer_MLSys2025.pdf'
download_pdf 'https://arxiv.org/pdf/2312.08994' 'arch/PANDA_ICCAD2023.pdf'
download_pdf 'https://arxiv.org/pdf/2410.17789' 'arch/FirePower_ASPDAC2025.pdf'
download_pdf 'https://arxiv.org/pdf/2608.06870' 'arch/G-Power_DAC2026.pdf'
download_pdf 'https://arxiv.org/pdf/2608.09252' 'eda/FSGen_DAC2026.pdf'

printf '\nDone. Check the PDFs before committing them.\n'
