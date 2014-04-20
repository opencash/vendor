#!/usr/bin/env bash

set -x
set -e

[ "$TRAVIS_COMMIT" ] && source travis/env.sh

GRADLE_FLAGS=
[ "$TRAVIS_COMMIT" ] && GRADLE_FLAGS='--no-color'

for p in poco sqlite3 libodb libodb-sqlite gtest gmock; do
    ./gradlew $GRADLE_FLAGS ${p}:publish
done
