#!/usr/bin/env bash
set -eu -o pipefail

# --- Install mysql-client
sudo apt update
sudo apt install -y default-mysql-client vim tig libpango1.0-0 \
    libpangoft2-1.0-0 \
    libcairo2 \
    libcairo2-dev \
    libgdk-pixbuf2.0-0 \
    libgdk-pixbuf2.0-dev \
    libffi-dev \
    libharfbuzz-dev \
    libjpeg-dev \
    zlib1g-dev \
    shared-mime-info && pip install --no-cache-dir -r requirements.txt

echo "pip installed successfully"