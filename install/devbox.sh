#!/bin/bash
sh <(curl -L https://nixos.org/nix/install) --daemon
curl -fsSL https://get.jetpack.io/devbox | bash

echo "if this doesn't work, you prolly don't have docker installed..."
