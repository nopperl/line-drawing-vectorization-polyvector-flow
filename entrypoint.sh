#!/bin/sh
cd /workspace/line-drawing-vectorization-polyvector-flow
mkdir -p outputs
find inputs -type f -name '*.png' -exec ./test_lineart.sh {} \;
mkdir -p outputs/svg
cp inputs/*svg outputs/svg
