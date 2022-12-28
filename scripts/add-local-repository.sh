#!/bin/env bash

set -euf -o pipefail

PREFIX="/opt/local"
PORT_SOURCES="$PREFIX/etc/macports/sources.conf"
REPO_ROOT=$(git rev-parse --show-toplevel)
PORT_ROOT="$REPO_ROOT/ports"

echo "$(awk -v path="$PORT_ROOT" '
/rsync\:\/\/rsync.macports.org/ {
  print "file://" path
}
{ print }
' "$PORT_SOURCES")" > "$PORT_SOURCES"



