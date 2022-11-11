#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME"/python

ln -sf "$DOTFILES/python/pythonrc.py" $PYTHONSTARTUP
