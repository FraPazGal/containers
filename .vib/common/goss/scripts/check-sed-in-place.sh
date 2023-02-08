#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

read -r -a files <<< "$(find /bitnami "$BITNAMI_ROOT_DIR" -name '*.sh')"

for file in "${files[@]}"; do
  if [[ $(grep -cE "sed -i|sed --in-place" "$file") -gt 0 ]]; then
    exit 1
  fi
done
