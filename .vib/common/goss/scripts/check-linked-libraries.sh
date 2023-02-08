#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

read -r -a files <<< "$(find "$BITNAMI_ROOT_DIR"/"$BITNAMI_APP_NAME" "$BITNAMI_ROOT_DIR"/common -type f -executable)"

for file in "${files[@]}"; do
  [[ $(ldd "$file" | grep -c "not found") -gt 0 ]] && exit 1
done
