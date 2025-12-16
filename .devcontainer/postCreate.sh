#!/usr/bin/env bash
set -euo pipefail

flutter config --enable-web

# Avoid git safe-directory warnings in some setups
git config --global --add safe.directory "${PWD}" || true

flutter doctor -v
flutter pub get