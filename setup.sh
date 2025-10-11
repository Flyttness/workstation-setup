#!/usr/bin/env bash

export WORK_DIR="$(dirname "$0")"

# Note: Homebrew needs to be set up first
#source ${WORK_DIR}/scripts/common/homebrew.sh

# Install everything else
source ${WORK_DIR}/scripts/common/oh-my-zsh.sh
source ${WORK_DIR}/scripts/common/editors.sh
source ${WORK_DIR}/scripts/common/git.sh
source ${WORK_DIR}/scripts/common/git-aliases.sh
source ${WORK_DIR}/scripts/common/developer-utilities.sh
source ${WORK_DIR}/scripts/common/vim-configurations.sh
source ${WORK_DIR}/scripts/common/applications-common.sh
source ${WORK_DIR}/scripts/common/unix.sh
source ${WORK_DIR}/scripts/common/configuration-osx.sh
source ${WORK_DIR}/scripts/common/aws.sh
source ${WORK_DIR}/scripts/common/azure.sh
source ${WORK_DIR}/scripts/common/1password.sh
source ${WORK_DIR}/scripts/common/final.sh
