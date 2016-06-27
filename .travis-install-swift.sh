#!/usr/bin/env bash

set -ev

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    pushd ${PWD}
    mkdir -p $HOME/.swift
    export SWIFT_VERSION=swift-DEVELOPMENT-SNAPSHOT-2016-06-20-a
    wget https://swift.org/builds/development/ubuntu1404/${SWIFT_VERSION}/${SWIFT_VERSION}-ubuntu14.04.tar.gz
    tar xzf ${SWIFT_VERSION}-ubuntu14.04.tar.gz
    export PATH=${PWD}/${SWIFT_VERSION}-ubuntu14.04/usr/bin:$PATH
    popd
fi
