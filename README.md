# Advent of Code 2015

My solutions to [Advent of Code 2015](https://adventofcode.com/2015), in Node.

## Run a day

1. Get your puzzle input. Inputs are personal, so each person fetches their own:

   ```sh
   npm install
   scripts/fetch-input.sh 1
   ```

   The script reads your session cookie from the Keychain. Save it once:

   ```sh
   security add-generic-password -s adventofcode.com -a session -w '<your session cookie>'
   ```

2. Run it:

   ```sh
   cd 01 && node index.mjs
   ```

## Days

| Day | Puzzle |
|---|---|
| 01 | [Not Quite Lisp](https://adventofcode.com/2015/day/1) |
| 02 | [I Was Told There Would Be No Math](https://adventofcode.com/2015/day/2) |
