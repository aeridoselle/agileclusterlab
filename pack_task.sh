#!/usr/bin/env bash
set -e
REPO="aeridoselle/agileclusterlab"
LIB="hyper-rectifier.a"
URL="https://github.com/${REPO}/releases/download/golden-garden-clever-ember/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
