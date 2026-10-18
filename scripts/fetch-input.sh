#!/bin/sh
# Download a day's puzzle input to <day>/input.txt. Inputs are personal, so they're never committed.
# Reads your session cookie from the macOS Keychain. Save it once with:
#   security add-generic-password -s adventofcode.com -a session -w '<your session cookie>'
set -eu
YEAR=2015
day=${1:?usage: scripts/fetch-input.sh <day>}
dir=$(printf '%02d' "$day")
if [ -s "$dir/input.txt" ]; then echo "$dir/input.txt is already here"; exit 0; fi
session=${AOC_SESSION:-$(security find-generic-password -s adventofcode.com -a session -w)}
mkdir -p "$dir"
curl -fsS -A "github.com/seriouslysean/advent-of-code-$YEAR" -b "session=$session" \
  "https://adventofcode.com/$YEAR/day/$day/input" -o "$dir/input.txt"
echo "Saved $dir/input.txt"
