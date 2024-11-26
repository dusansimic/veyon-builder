#!/usr/bin/env bash

set -e

export CMAKE_FLAGS="$CMAKE_FLAGS -DWITH_PCH=OFF -DCPACK_DIST=fedora.41 -DCMAKE_CXX_FLAGS=-Wno-template-id-cdtor"

$GITHUB_WORKSPACE/.ci/common/linux-build.sh $@
$GITHUB_WORKSPACE/.ci/common/finalize-rpm.sh $1 $2
