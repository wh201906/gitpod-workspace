#!/bin/bash

# Install Android SDK
# These commands are extracted from https://github.com/gitpod-io/template-flutter/blob/a6ca97087e820f1f79ba6c4613e728f6d2a54013/.gitpod.Dockerfile
# The "_file_name" might be outdated, check https://developer.android.com/studio#command-tools for the latest one
# run it with "." or "source", so the environment variables will be set properly.

export ANDROID_HOME=$HOME/androidsdk
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"

sudo install-packages openjdk-8-jdk -y \
    libgtk-3-dev \
    libnss3-dev \
    fonts-noto \
    fonts-noto-cjk \
&& sudo update-java-alternatives --set java-1.8.0-openjdk-amd64

_file_name="commandlinetools-linux-8092744_latest.zip" && wget "https://dl.google.com/android/repository/$_file_name" \
&& unzip "$_file_name" -d $ANDROID_HOME \
&& rm -f "$_file_name" \
&& mkdir -p $ANDROID_HOME/cmdline-tools/latest \
&& mv $ANDROID_HOME/cmdline-tools/{bin,lib} $ANDROID_HOME/cmdline-tools/latest \
&& yes | sdkmanager "platform-tools" "build-tools;31.0.0" "platforms;android-31"