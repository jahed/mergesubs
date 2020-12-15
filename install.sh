#!/usr/bin/env bash
set -euo pipefail

echo "Creating symlink"
ln -s "${PWD}/mergesubs" ~/.local/bin/mergesubs

echo "Done."
