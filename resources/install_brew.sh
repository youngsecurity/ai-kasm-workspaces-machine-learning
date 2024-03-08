#!/usr/bin/env bash
set -ex

ARCH=$(uname -p)

if [[ "${ARCH}" =~ ^aarch64$ ]] ; then
    
    apt update && apt upgrade -y && apt install -y curl

    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
EOL

else
    apt update && apt upgrade -y && apt install -y curl

    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi