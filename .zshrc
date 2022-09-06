if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

autoload -Uz compinit promptinit
compinit
promptinit

# Environment Variables
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export EDITOR="nvim"
export NVM_DIR="$HOME/.config/nvm"
export CLICOLOR=1

# Aliases
alias vim='nvim'

# Styling
prompt walters
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Random apps and stuff
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
