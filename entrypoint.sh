#!/bin/sh
set -euo pipefail

cd /workspace/line-drawing-vectorization-polyvector-flow
mkdir -p outputs
find inputs -type f -name '*.png' -exec ./test_lineart.sh {} \;
mkdir -p outputs/svg
cp inputs/*svg outputs/svg
find outputs/svg -type f -name '*.svg' -exec sh -c 'mv "$0" "${0%_result.svg}.svg"' {} \;
