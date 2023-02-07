#!/bin/bash

components=( $(cat $BITNAMI_ROOT_DIR/.bitnami_components.json | grep ": {" | cut -d ':' -f 1 | tr -d '"') )

for component in "${components[@]}"; do
  which $component
  [ $? -eq 0 ] || exit 1
done
