#!/bin/bash

# This script is to be sourced by the other scripts to set up env variables

export IVY_REPO_DIR="$HOME/ivy_repo"
export TOOLCHAINS_DIR="$HOME/toolchains"
export ANDROID_HOME=$TOOLCHAINS_DIR/android-ndk-r9d
export PATH=$PATH:$TOOLCHAINS_DIR/gcc-4.8.1-for-linux64/bin:$ANDROID_HOME/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin

GIT_CREDENTIALS="$HOME/.git_credentials"
