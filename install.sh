#!/usr/bin/env bash

PACKAGES=(
    "curl"
    "git"
    "tmux"
    "htop"
    "zsh"
)

NOT_INSTALLED_PACKAGES=()

for package in ${PACKAGES[@]}; do
    if ! [ -x "$(command -v $package)" ]; then
        NOT_INSTALLED_PACKAGES+=($package)
    fi
done

if [ ${#NOT_INSTALLED_PACKAGES[@]} -gt 0 ]; then
    sudo apt update
    sudo apt install ${NOT_INSTALLED_PACKAGES[@]}
fi

# Excluding git directory
if [ -d .git/ ]; then
    echo "Excluding git directory"
    rm -rf .git/
fi

# Copying files to home
echo "Copying files to home"
cp .* $HOME
