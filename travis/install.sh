#!/bin/bash

set -x
set -e

. ./env.sh

echo -n "Setting up git... "
git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL
git config --global credential.helper "store --file=$GIT_CREDENTIALS"
set +x
echo "https://${GH_TOKEN}:@github.com" > $GIT_CREDENTIALS
set -x
echo "done"

echo -n "Cloning ivy_repo... "
git clone --quiet --branch=gh-pages https://github.com/opencash/ivy_repo.git ${IVY_REPO_DIR}
echo "done"

echo -n "Downloading and extracting gcc-4.8.1-for-linux64.tar.bz2... "
mkdir -p $TOOLCHAINS_DIR
(
    cd $TOOLCHAINS_DIR
    TOOLCHAIN=gcc-4.8.1-for-linux64
    curl -O https://dl.dropboxusercontent.com/u/8225764/opencash-build-support/${TOOLCHAIN}.tar.bz2
    tar xjf ${TOOLCHAIN}.tar.bz2
    ln -s $TOOLCHAINS_DIR/${TOOLCHAIN} /usr/local
)
echo "done"

echo -n "Installing Android NDK... "
(
    cd $TOOLCHAINS_DIR
    TOOLCHAIN=android-ndk-r9d-darwin-x86_64
    curl -O http://dl.google.com/android/ndk/${TOOLCHAIN}.tar.bz2
    tar xjf ${TOOLCHAIN}.tar.bz2
echo "done
