#!/usr/bin/env bash
set -e
LIB="patchouli-cord.a"
TAG="cosmic-forest-golden-forest"
REPO="gladetoasty/wrappedplankkit"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
