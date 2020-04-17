#!/bin/bash

docker run \
  -e EM_OUT=/build/out.js \
  -e EM_ARGS \
  -v /tmp/cobol-worker:/root/.emscripten_cache/ \
  -v "$PWD:/worker" \
  -v "$PWD/public:/build" \
  xtuc/cobaul \
  /worker/src/index.cob