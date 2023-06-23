#!/bin/bash
set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <go version>"
    exit 1
fi
GO_VERSION="$1"
release_url="https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz"


# -O: output to /tmp/go.tar.gz
wget "$release_url" -O /tmp/go.tar.gz && \
sudo rm -rf /usr/local/go && \
echo "Extracting go $GO_VERSION..." && \
sudo tar -C /usr/local -xzf /tmp/go.tar.gz && \
rm /tmp/go.tar.gz && \
echo "$PATH" | grep "/usr/local/go/bin"


# src for shorter wget: https://stackoverflow.com/questions/51933636/url-for-golang-latest-stable-release