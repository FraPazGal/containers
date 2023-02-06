#!/bin/bash

files=( $(find $BITNAMI_ROOT_DIR/$BITNAMI_APP_NAME $BITNAMI_ROOT_DIR/common -type f -executable) )

for file in "${files[@]}"; do
  if [[ ! -x $file ]] || [[ $(ldd $file | grep -c "not found") -gt 0 ]]; then
    exit 1
  fi
done
