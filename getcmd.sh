#!/bin/sh

cat "install/$1" | sed -e "s/\${1}/$2/" -e 's/$/  \\/'
