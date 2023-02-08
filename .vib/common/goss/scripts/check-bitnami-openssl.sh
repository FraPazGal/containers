#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

openssl_bin="$BITNAMI_ROOT_DIR/common/bin/openssl"
openssl_version="1.0.1u"

if [[ -f $openssl_bin ]]; then
  $openssl_bin version | grep -s $openssl_version
fi
