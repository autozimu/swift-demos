#!/usr/bin/env bash

set -euf -o pipefail

export SWIFT_VERSION=swift-DEVELOPMENT-SNAPSHOT-2016-06-20-a

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    if [[ ! -d "$HOME/.swift/${SWIFT_VERSION}-ubuntu14.04" ]]; then
        pushd ${PWD}
        mkdir -p $HOME/.swift
        cd $HOME/.swift
        PKG=${SWIFT_VERSION}-ubuntu14.04.tar.gz
        wget https://swift.org/builds/development/ubuntu1404/${SWIFT_VERSION}/${PKG}
        tar -zxf ${PKG}
        rm ${PKG}
        popd
    fi
    export PATH=$HOME/.swift/${SWIFT_VERSION}-ubuntu14.04/usr/bin:$PATH
elif [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    PKG=${SWIFT_VERSION}-osx.pkg
    if [[ ! -d "$HOME/.swift/${PKG}" ]]; then
        pushd ${PWD}
        mkdir -p $HOME/.swift
        cd $HOME/.swift
        wget https://swift.org/builds/development/xcode/${SWIFT_VERSION}/${PKG}
    fi
    sudo installer -pkg ${PKG} -target /
fi
