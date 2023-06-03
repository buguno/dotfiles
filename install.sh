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

# Installing Oh My Zsh
if ! [ -e ~/.zshrc ]; then
    echo "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Instaling Spaceship Prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Instaling Zinit
if ! [ -d ~/.local/share/zinit ]; then
    echo "Instaling Zinit"
    bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
fi
