#!/bin/sh

set -o errexit
set -o nounset
set -o pipefail

error() {
	echo "$1"
	exit 1
}

echo "This is a base image for GitHub Actions and other useful jobs."
exit 0
