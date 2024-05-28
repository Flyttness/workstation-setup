# https://developer.1password.com/docs/ssh/get-started/#step-4-configure-your-ssh-or-git-client

# Agent path that's easier to type, create a symlink for ~/.1password/agent.sock
mkdir -p ~/.1password && ln -s ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock ~/.1password/agent.sock

# Add the IdentityAgent snippet to your ~/.ssh/config file
mkdir -p "$HOME"/.ssh
cp "$WORK_DIR"/files/ssh-confg.1password "$HOME"/.ssh/config

# Set the SSH_AUTH_SOCK environment variable in the shell
echo "export SSH_AUTH_SOCK=~/.1password/agent.sock" >> ~/.zshrc
