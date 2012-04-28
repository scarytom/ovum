#!/bin/sh
set -u
set -e

PARENT=$1
WOMB=$2
OVARY=`mktemp -d`

mkdir -p "$WOMB"
wget --no-check-certificate "https://nodeload.github.com/scarytom/ovum/tarball/$PARENT" -O - | tar xz -C "$OVARY"
find "$OVARY"/*/. -mindepth 1 -maxdepth 1 -exec mv -t"$WOMB"/. -- {} +
rmdir "$OVARY"/* "$OVARY"