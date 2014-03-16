#!/usr/bin/env bash

set -x
set -e

[ -z "$TRAVIS_COMMIT" ] && source travis/env.sh

env

for p in poco sqlite3 libodb libodb-sqlite gtest gmock; do
    ./gradlew --no-color ${p}:publish --info
done
