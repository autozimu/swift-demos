#!/usr/bin/env bash

set -euf -o pipefail

VERSION=swift-DEVELOPMENT-SNAPSHOT-2016-06-20-a

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    if [[ ! -d "$HOME/.swift/${VERSION}-ubuntu14.04" ]]; then
        pushd ${PWD}
        mkdir -p $HOME/.swift
        cd $HOME/.swift
        PKG=${VERSION}-ubuntu14.04.tar.gz
        wget https://swift.org/builds/development/ubuntu1404/${VERSION}/${PKG}
        tar -zxf ${PKG}
        rm ${PKG}
        popd
    fi
    export PATH=$HOME/.swift/${VERSION}-ubuntu14.04/usr/bin:$PATH
elif [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    if [[ ! -d "$HOME/.swift/${VERSION}" ]]; then
        pushd ${PWD}
        mkdir -p $HOME/.swift
        cd $HOME/.swift
        PKG=${VERSION}-osx.pkg
        wget https://swift.org/builds/development/xcode/${VERSION}/${PKG}
        sudo installer -pkg ${PKG} -target $HOME/.swift/${VERSION}
    fi
    export PATH=$HOME/.swift/${VERSION}/usr/bin:$PATH
fi
