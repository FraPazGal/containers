#!/bin/bash

openssl_bin="$BITNAMI_ROOT_DIR/common/bin/openssl"
openssl_version="1.0.1u"

if [[ -f $openssl_bin ]]; then
  $openssl_bin version | grep -s $openssl_version || exit 1
fi
