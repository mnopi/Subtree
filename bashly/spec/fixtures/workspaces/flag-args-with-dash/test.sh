#!/usr/bin/env bash

# This fixture tests that alias command codes work properly
# It is executed as part of the Runfile examples test
# Reference issue: https://github.com/DannyBen/bashly/issues/16

rm -f ./src/*.sh
rm -f ./argflag

set -x

bundle exec bashly generate

./argflag -f -o
./argflag -o -f
./argflag -o '--verbose --anything' -f