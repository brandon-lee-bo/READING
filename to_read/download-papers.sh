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

download_pdf 'https://proceedings.neurips.cc/paper_files/paper/2023/file/1feb87871436031bdc0f2beaa62a049b-Paper-Conference.pdf' 'ai/QLoRA_NeurIPS2023.pdf'
download_pdf 'https://proceedings.mlsys.org/paper_files/paper/2024/file/054de805fcceb78a201f5e9d53c85908-Paper-Conference.pdf' 'ai/Punica_MLSys2024.pdf'

printf '\nDone. Verify the PDFs before committing them.\n'
