#!/bin/sh

cat "install/$1" | sed -e '/^\s*$/d' -e '/^\s*#/d' -e "s/\${1}/$2/" -e '$ ! s/$/ \&\& \\/'
