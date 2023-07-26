#!/bin/sh
set -euo pipefail

filepath=$1
filename=$(basename "$filepath")
mkdir -p ./outputs/runtime/
time -o ./outputs/runtime/"${filename%png}txt" bash run_vectorization.sh "$filepath"
