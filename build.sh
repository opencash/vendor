#!/usr/bin/env bash

set -x
set -e

[ "$TRAVIS_COMMIT" ] && source travis/env.sh

for p in poco sqlite3 libodb libodb-sqlite gtest gmock; do
    ./gradlew --no-color -q ${p}:publish
done
