#!/usr/bin/env bash

WORK_DIR="$(dirname "$0")"

# Ask for the administrator password upfront
sudo -v

# Keep sudo alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Note: Homebrew needs to be set up first
source ${WORK_DIR}/scripts/common/homebrew.sh

# Install everything else
source ${WORK_DIR}/scripts/common/oh-my-zsh.sh
source ${WORK_DIR}/scripts/common/editors.sh
source ${WORK_DIR}/scripts/common/git.sh
source ${WORK_DIR}/scripts/common/git-aliases.sh
source ${WORK_DIR}/scripts/common/developer-utilities.sh
source ${WORK_DIR}/scripts/common/vim-configurations.sh
source ${WORK_DIR}/scripts/common/applications-common.sh
source ${WORK_DIR}/scripts/common/unix.sh