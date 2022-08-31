#!/bin/bash
set -e
sudo apt install -y curl \
    gnupg ca-certificates git \
    gcc-multilib g++-multilib cmake libssl-dev pkg-config \
    libfreetype6-dev libasound2-dev libexpat1-dev libxcb-composite0-dev \
    libbz2-dev libsndio-dev freeglut3-dev libxmu-dev libxi-dev libfontconfig1-dev && \
curl --proto '=https' --tlsv1.2 -sSf "https://sh.rustup.rs" | sh && \
echo "restarting shell..."
echo "now run ./neovide_2.sh" && \
exec basH

