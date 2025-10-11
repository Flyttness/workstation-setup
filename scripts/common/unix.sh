echo
echo "Installing utilities for unix development"

# Handy CLI tools
brew install autojump # navigation helper
brew install grc # colorize things
brew install coreutils # GNU core utilities
brew install watch # watch things
brew install direnv # unclutter your .profile

# For users of unixes
brew install pstree
brew install the_silver_searcher
brew install wget
brew install ssh-copy-id
brew install tree

# For developers of shell scripts
brew install jq # JSON utility
brew install yq # YAML utility

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh
brew install screen