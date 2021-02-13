#!/bin/sh
# shellcheck shell=dash

set -o errexit
set -o nounset
set -o pipefail

error() {
  echo "$1"
  exit 1
}

echo "This is a base container image for GitHub actions and other useful work."
exit 0
