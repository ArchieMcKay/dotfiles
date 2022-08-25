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

# Aliases
alias ls='ls -G'
alias uni='cd "/Users/archiemckay/Library/CloudStorage/OneDrive-TheUniversityofSydney(Students)/Uni/Year 4/Semester 2"'
alias vim='nvim'

# Styling
prompt walters
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# This must be at the end of the file for sdkman to work!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
