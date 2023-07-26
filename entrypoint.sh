#!/bin/sh
set -euo pipefail

output_dir=outputs/svg
cd /workspace/line-drawing-vectorization-polyvector-flow
mkdir -p outputs
find inputs -type f -name '*.png' -exec ./test_lineart.sh {} \;
mkdir -p outputs/svg
cp inputs/*svg $output_dir
find $output_dir -type f -name '*.svg' -exec sh -c 'mv "$0" "${0%_result.svg}.svg"' {} \;
find $output_dir -type f -name '*.svg' -exec sed -i 's/stroke="rgb(0,0,255)"/stroke="black"/;5,7d' {} \;
