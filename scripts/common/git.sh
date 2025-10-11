echo
echo "Installing Git and associated tools"
brew install git
brew install git-delta # better diff

echo
echo "Setting global Git configurations"

# Get username and email
ENV_FILE="$(dirname "$0")/../../.env"

# Check if username is already saved
if [ -f "$ENV_FILE" ] && grep -q "^GIT_USERNAME=" "$ENV_FILE"; then
    USER_NAME=$(grep "^GIT_USERNAME=" "$ENV_FILE" | cut -d'=' -f2-)
    echo "Using saved username: $USER_NAME"
else
    # Try to detect username from system
    DETECTED_NAME=$(dscl . -read /Users/$(whoami) | grep -A1 "^RealName:" | tail -1 | sed 's/^[[:space:]]*//' 2>/dev/null || echo "")
    if [ -n "$DETECTED_NAME" ]; then
        echo "Detected username: $DETECTED_NAME"
        echo "Is this correct? (y/n)"
        read -r confirm
        if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
            USER_NAME="$DETECTED_NAME"
        else
            echo "Please enter your username:"
            read -r USER_NAME
        fi
    else
        echo "Please enter your username:"
        read -r USER_NAME
    fi
    echo "GIT_USERNAME=$USER_NAME" > "$ENV_FILE"
    echo "Username saved to .env"
fi

# Check if email is already saved
if [ -f "$ENV_FILE" ] && grep -q "^GIT_EMAIL=" "$ENV_FILE"; then
    USER_EMAIL=$(grep "^GIT_EMAIL=" "$ENV_FILE" | cut -d'=' -f2-)
    echo "Using saved email: $USER_EMAIL"
else
    echo "Please enter your email address:"
    read -r USER_EMAIL
    echo "GIT_EMAIL=$USER_EMAIL" >> "$ENV_FILE"
    echo "Email saved to .env"
fi

git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"
git config --global core.editor "$(brew --prefix)/bin/vim"
git config --global transfer.fsckobjects true
git config --global core.autocrlf input

git config --global pager.diff delta
git config --global pager.log delta
git config --global pager.reflog delta
git config --global pager.show delta
git config --global interactive.diffFilter 'delta --color-only --features=interactive'

mkdir -p ~/.git_templates
git config --global init.templateDir ~/.git_templates
echo "ref: refs/heads/main" > ~/.git_templates/HEAD

# Install GnuPG to enable PGP-signing commits.
brew install gnupg