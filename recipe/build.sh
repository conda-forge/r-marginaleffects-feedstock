#!/bin/bash

export DISABLE_AUTOBREW=1

## needed for Arch builds
## see https://github.com/conda-forge/r-base-feedstock/issues/163
export PKG_CPPFLAGS="-DHAVE_WORKING_LOG1P"

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
