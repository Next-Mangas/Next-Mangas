#!/bin/sh

PACKAGES=(
    "lapis"
    "moonscript"
    "lua-cjson 2.1.0-1"
)

for pkg in "${PACKAGES[@]}"; do
    luarocks --lua-version=5.1 install $pkg
done