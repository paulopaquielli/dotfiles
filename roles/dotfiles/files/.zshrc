# =============================================================================
# Omakub-inspired Zsh Configuration
# =============================================================================

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="" # Managed by starship
plugins=(git z docker docker-compose asdf)
source $ZSH/oh-my-zsh.sh

# --- Omakub Defaults & Aliases ---

# Colorize output
alias ls='eza --icons'
alias ll='eza -lh --icons --grid --group-directories-first'
alias la='eza -lah --icons --grid --group-directories-first'

# Useful aliases
alias cd='z'
alias cat='bat --paging=never'
alias c='clear'
alias top='btop'
alias lg='lazygit'
alias ld='lazydocker'

# ASDF
if [ -f "$HOME/.asdf/asdf.sh" ]; then
  . "$HOME/.asdf/asdf.sh"
fi

# Zoxide initialization
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# Starship prompt initialization
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# =============================================================================
