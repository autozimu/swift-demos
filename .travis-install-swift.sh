#!/usr/bin/env bash

set -ev

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    pushd
    cd ..
    export SWIFT_VERSION=swift-3.0-preview-1
    wget
    https://swift.org/builds/${SWIFT_VERSION}/ubuntu1404/${SWIFT_VERSION}/${SWIFT_VERSION}-ubuntu14.04.tar.gz
    tar xzf ${SWIFT_VERSION}-ubuntu14.04.tar.gz
    export PATH=${PWD}/${SWIFT_VERSION}-ubuntu14.04/usr/bin:$PATH
    popd
fi
