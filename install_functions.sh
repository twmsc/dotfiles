#!/usr/bin/env bash

function dot_install() {
    echo -e "${blue}-> Installing ${yellow}${1} ${blue}config"
    . $DOTFILES/install/install-${1}.sh
}

function dot_is_installed() {
    command -v $1 >/dev/null
}
