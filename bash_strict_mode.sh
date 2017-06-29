#!/bin/bash

set -euo pipefail
echo "-e instructs bash to exit if any command has a non-zero exit status"
echo "-u affects varaibles, variable must be defined"
echo "-o pipefall prevents errors from being masked, the return code of the failng code is returned"

echo ""
echo -e "IFS=$' ' Internal Field Separator controls  what bash calls word splitting\n"

names=(
  "Aaron Maxwell"
  "Wayne Gretzky"
  "David Beckham"
  "Anderson da Silva"
)

echo "With default IFS value..."
for name in ${names[@]}; do
  echo "$name"
done

echo ""
echo "With strict-mode IFS value..."
IFS=$'\n\t'
for name in ${names[@]}; do
  echo "$name"
done
