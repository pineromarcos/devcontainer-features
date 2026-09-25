#!/bin/sh
set -e

OPENSPEC_VERSION=${VERSION:-"latest"}

if ! command -v npm >/dev/null 2>&1; then
    echo "ERROR: npm is required to install OpenSpec but was not found."
    exit 1
fi

echo "Installing OpenSpec ${OPENSPEC_VERSION}..."

npm install -g "@fission-ai/openspec@${OPENSPEC_VERSION}"

echo "OpenSpec installed: $(openspec --version)"
