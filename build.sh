#!/bin/bash

set -x
set -e

for p in poco sqlite3 libodb libodb-sqlite gtest gmock; do
    ./gradlew --no-color ${p}:publish --info
done
