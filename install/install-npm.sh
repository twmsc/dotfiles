#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME"/npm

ln -sf "$DOTFILES/npm/npmrc" "$NPM_CONFIG_USERCONFIG"
