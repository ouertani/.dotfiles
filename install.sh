/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true


# B R E W
# =======
#
brew install \
  stow \
  git \
  git-flow \
  node \
  docker \
  tmux \
  neovim \
  zoxide \
  fzf \
  bat


brew install --cask arc \
  ghostty \
  raycast \
  rectangle \
  sublime-text \
  visual-studio-code \
  bitwarden \