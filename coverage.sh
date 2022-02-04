#!/bin/bash

set -e
MAX_UNCOVERED=0 # Maximum number of uncovered lines allowed

echo "Running coverage..."
uncovered=$(dapp --use solc:0.8.9 test -v --coverage --cov-match "Wormhole.*\.t\.sol" | grep "\[31m" | wc -l)
echo "Uncovered lines: $uncovered"

if [[ $uncovered -gt $MAX_UNCOVERED ]]; then
    echo "Insufficient coverage (max $MAX_UNCOVERED uncovered lines allowed)"
    exit 1
fi

echo "Satisfying coverage!"

