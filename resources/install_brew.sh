#!/usr/bin/env bash
set -ex

apt update && apt upgrade -y && apt install -y curl

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"