# .zshrc ---

#[[ -f ~/.zprofile ]] && source ~/.zprofile

# Plugin manager ---
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [[ ! -d "$ZINIT_HOME" ]]; then
  mkdir -p "$(dirname "$ZINIT_HOME")"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Plugins ---
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-syntax-highlighting
zinit light Aloxaf/fzf-tab

# Snippets ---
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# Load completions ---
autoload -Uz compinit
compinit
zinit cdreplay -q

# Completion style
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache
mkdir -p ~/.zsh/cache

zstyle ':fzf-tab:*' fzf-preview 'ls -1 --color=auto $realpath 2>/dev/null'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls -lah --color=auto $realpath 2>/dev/null'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls -lah --color=auto $realpath 2>/dev/null'

# Prompt configuration ---
eval "$(oh-my-posh init zsh --config "${HOME}/.config/ohmyposh/config.toml")"

# Shell integration ---
#eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# Settings ---
HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_find_no_dups

# Keybindings ---
bindkey -e
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^T' fzf-file-widget

# Aliases ---
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias grep='grep --color=auto --line-buffered'
alias rg='rg --smart-case'
