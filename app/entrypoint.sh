#!/usr/bin/env bash
set -euo pipefail

_term() {
  >&2 echo "TERM"
  exit 0
}
trap "_term" TERM

_err() {
  >&2 echo "err: $*"
  exit 1
}

/usr/games/chocolate-doom -nosound -window -geometry 320x240 &
doom_pid=$!
echo "doom started"
wait $doom_pid
