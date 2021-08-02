#!/bin/bash

set -e

# Export variables
CONF=test/conf/env.sh
if [ -f "$CONF" ]; then
    . "$CONF"
fi

# Run tests
for TEST in "$@"; do
    TEST_FILE="/tmp/tmp.bats"
    cp "test/bats/$TEST.bats" $TEST_FILE
    bats $TEST_FILE
done