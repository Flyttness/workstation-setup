echo
echo "Installing Git and associated tools"
brew install git
brew install git-delta # better diff

echo
echo "Setting global Git configurations"
# TODO: Parameterise the name and email via a .env file
git config --global user.name "sebykrueger"
git config --global user.email "email@sebkrueger.info"

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