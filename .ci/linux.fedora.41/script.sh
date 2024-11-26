#!/usr/bin/env bash

set -e

export CMAKE_FLAGS="$CMAKE_FLAGS -DWITH_PCH=OFF -DCPACK_DIST=fedora.41 -DCMAKE_CXX_FLAGS=-Wno-template-id-cdtor"

veyon-builder/.ci/common/linux-build.sh $@
veyon_builder/.ci/common/finalize-rpm.sh $@
