#!/usr/bin/env bash

set -e

export CMAKE_FLAGS="$CMAKE_FLAGS -DWITH_PCH=OFF -DCPACK_DIST=fedora.41 -DCMAKE_CXX_FLAGS=-Wno-template-id-cdtor"

__GITHUB_WORKSPACE=$1
__VEYON_DIR=$2
__TMP_DIR=$3

${__GITHUB_WORKSPACE}/veyon-builder/.ci/common/linux-build.sh ${__GITHUB_WORKSPACE}/${__VEYON_DIR} $__TMP_DIR
${__GITHUB_WORKSPACE}/veyon_builder/.ci/common/finalize-rpm.sh ${__GITHUB_WORKSPACE}/${__VEYON_DIR} $__TMP_DIR
