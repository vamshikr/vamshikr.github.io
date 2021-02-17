#! /bin/bash

set -o nounset
set -o errexit
set -o pipefail



function  main {

    local BUILD_DIR="./build"
    
    if [[ ! -d "$BUILD_DIR" ]]; then
        mkdir "$BUILD_DIR"
    fi

    rm -rf "$BUILD_DIR"/*

    cp -R ./css ./img ./js ./index.html "$BUILD_DIR"
}

set -x;
main "$@"
