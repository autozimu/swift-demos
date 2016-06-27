#!/usr/bin/env bash

set -ev

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    export SWIFT_VERSION=swift-DEVELOPMENT-SNAPSHOT-2016-06-20-a

    if [[ ! -d "$HOME/.swift" ]]; then
        pushd ${PWD}
        mkdir $HOME/.swift
        cd $HOME/.swift
        wget https://swift.org/builds/development/ubuntu1404/${SWIFT_VERSION}/${SWIFT_VERSION}-ubuntu14.04.tar.gz
        tar -zxf ${SWIFT_VERSION}-ubuntu14.04.tar.gz
        popd
    fi

    export PATH=$HOME/.swift/${SWIFT_VERSION}-ubuntu14.04/usr/bin:$PATH
fi
