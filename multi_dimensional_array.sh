#!/bin/bash

set -euo pipefail

test=(
  "x3:x4:x5"
)

test1=(
  "x3"
  "x4"
)

declare -A doh=(
  ["1"]=$test1
  ["2"]=$test1
)

echo "default IFS"
for w in ${doh[@]}; do
  echo "${w[@]}"
done

declare -A wow=(
  ["1"]=$test
  ["2"]=$test
)
echo "default IFS"
for w in ${wow[@]}; do
  echo "$w"
done

for t in $test; do
  echo "$t"
done

IFS=:
echo "IFS=:"
for w in ${wow[@]}; do
  for t in $w; do
    echo "$t"
  done
done

unset IFS
