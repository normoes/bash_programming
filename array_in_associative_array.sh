#!/bin/bash

set -euo pipefail

# used as value in asscciative array
test=(
  "x3:x4:x5"
)
# associative array
declare -A wow=(
  ["1"]=$test
  ["2"]=$test
)
echo "default IFS"
for w in ${wow[@]}; do
  echo "  $w"
done

IFS=:
echo "IFS=:"
for w in ${wow[@]}; do
  for t in $w; do
    echo "  $t"
  done
done
echo -e "\n or\n"
for w in ${!wow[@]}
do
  echo "  $w"
  for t in ${wow[$w]}
  do
    echo "    $t"
  done
done

unset IFS
unset w
unset t
unset wow
unset test
