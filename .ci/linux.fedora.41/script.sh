#!/usr/bin/env bash

set -ex

export CMAKE_FLAGS="$CMAKE_FLAGS -DWITH_PCH=OFF -DCPACK_DIST=fedora.41 -DCMAKE_CXX_FLAGS=-Wno-template-id-cdtor"

.ci/common/linux-build.sh $@
.ci/common/finalize-rpm.sh $@
