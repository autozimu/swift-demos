#!/usr/bin/env bash

set -ev

if [[ "$TRAVIS_OS_NAME" == "linux" ]]; then
    export VERSION=swift-DEVELOPMENT-SNAPSHOT-2016-06-20-a

    if [[ ! -d "$HOME/.swift/${VERSION}-ubuntu14.04" ]]; then
        pushd ${PWD}
        mkdir $HOME/.swift
        cd $HOME/.swift
        PKG=${VERSION}-ubuntu14.04.tar.gz
        wget https://swift.org/builds/development/ubuntu1404/${VERSION}/${PKG}
        tar -zxf ${PKG}
        rm ${PKG}
        popd
    fi

    export PATH=$HOME/.swift/${VERSION}-ubuntu14.04/usr/bin:$PATH
fi
