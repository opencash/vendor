# vendor

Build scripts to repackage external vendor dependencies into native artifacts
served via [ivy_repo](https://opencash.github.io/ivy_repo).

[![Build Status](https://travis-ci.org/opencash/vendor.png?branch=master)](https://travis-ci.org/opencash/vendor)

## Before committing

1. Add the cross compilers to your PATH, e.g.

   ```bash
   export PATH=$PATH_ORIG:/usr/local/gcc-4.8.1-for-linux64/bin:/opt/android-toolchain/bin/
   ```

2. Clean previous build outputs

   ```bash
   rm -rf gmock/build gtest/build libodb-sqlite/build libodb/build poco/build sqlite3/build build
   # or
   ./gradlew clean
   ```

3. Run `./build.sh`
4. Make sure all packages build successfully
