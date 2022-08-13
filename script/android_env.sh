#!/bin/bash

# Just set up the environment variables
# run it with "." or "source", so the environment variables will be set properly.

export ANDROID_HOME=$HOME/androidsdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"