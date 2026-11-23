#!/usr/bin/env bash
set -e
LIB="crisp-vector.a"
TAG="hidden-canyon-frosty-comet"
REPO="zinebqbbm/goboulderpillow"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
