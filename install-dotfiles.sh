#!/bin/bash

set -eou pipefail

REPO=https://github.com/gabi-250/dotfiles.git
DOTFILES_GIT=$HOME/.dotfiles

git clone --bare "$REPO" "$DOTFILES_GIT"

git --git-dir="$DOTFILES_GIT" --work-tree=$HOME checkout --force
