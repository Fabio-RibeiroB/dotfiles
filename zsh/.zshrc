# Ensure user-level tools like 'uv' are available
# Used to be: . "$HOME/.local/bin/env"
export PATH="$HOME/.local/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Fabio.Brady/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Fabio.Brady/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Fabio.Brady/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Fabio.Brady/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Homebrew
export PATH="/Users/Fabio.Brady/homebrew/bin:$PATH"

# For Claude
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Zed editor
alias zed="open -a /Applications/Zed.app -n"        

# Zoxide
eval "$(zoxide init zsh)"

# git
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gap='ga --patch'
alias gc='git commit'
alias gp='git push'
alias gu='git pull'
alias gb='git branch'
alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n"'
alias gi='git init'
alias gn='git checkout -b'  # new branch
alias gcl='git clone'

# git config
export GIT_CONFIG_GLOBAL=$HOME/.config/git/config

# eza
alias e='eza -a'

# Make nvim default editor
export EDITOR="nvim"
export VISUAL="nvim"

# For aerospace to find config 
export XDG_CONFIG_HOME="$HOME/.config"
