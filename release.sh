#!/usr/bin/env bash
set -euo pipefail

echo "Make sure you've bumped the version BEFORE running this script."

echo
echo "GENERATING README"
./mergesubs --help > README
git add mergesubs README

echo
echo "COMMITTING"
version="$(./mergesubs --version | cut -d' ' -f2)"
message="chore(release): ${version}"
git commit -m "${message}"
git tag "${version}" -m "${message}"

echo
echo "PUSHING"
git push --follow-tags

echo
echo "Released."
