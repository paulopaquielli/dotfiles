# =============================================================================
# Omakub-inspired Zsh Configuration
# =============================================================================

# User binaries in PATH
export PATH="$HOME/.local/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="" # Managed by starship
plugins=(git docker docker-compose)

if [ -f "$ZSH/oh-my-zsh.sh" ]; then
  source "$ZSH/oh-my-zsh.sh"
fi

# --- Omakub Defaults & Aliases ---

# Colorize output with eza (fallback to ls)
if command -v eza >/dev/null 2>&1; then
  alias ls='eza --icons=always'
  alias ll='eza -lh --icons=always --grid --group-directories-first'
  alias la='eza -lah --icons=always --grid --group-directories-first'
fi

# Modern cat via bat / batcat
if command -v bat >/dev/null 2>&1; then
  alias cat='bat --paging=never'
elif command -v batcat >/dev/null 2>&1; then
  alias cat='batcat --paging=never'
fi

# Useful aliases
alias c='clear'
alias top='btop'
alias lg='lazygit'
alias ld='lazydocker'

# Zoxide initialization
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
  alias cd='z'
fi

# ASDF
if [ -f "$HOME/.asdf/asdf.sh" ]; then
  . "$HOME/.asdf/asdf.sh"
fi
if [ -f "$HOME/.asdf/completions/asdf.bash" ]; then
  . "$HOME/.asdf/completions/asdf.bash"
fi

# Starship prompt initialization
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi

# =============================================================================
