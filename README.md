# Ubuntu Provisioning (Omakub-inspired) 🚀

Transform a basic Ubuntu installation into a fully-configured, visually stunning, and highly productive web development environment with a single command. Inspired by DHH's Omakub.

## 🌟 Features

*   **Beautiful Terminal:** Zsh + Oh-My-Zsh + Starship prompt + Alacritty (GPU-accelerated terminal).
*   **Modern CLI Tools:** Replaces old utilities with blazing-fast modern alternatives:
    *   `ls` ➡️ `eza` (icons and colors)
    *   `cd` ➡️ `zoxide` (smart directory jumping)
    *   `cat` ➡️ `bat` (syntax highlighting)
    *   `find` ➡️ `fd` (fast search)
    *   `top` ➡️ `btop` (beautiful resource monitor)
*   **Docker & DevOps:** Docker, Docker Compose, Lazydocker.
*   **Development Tools:** ASDF (Version Manager), Git + Lazygit + GitHub CLI (`gh`).
*   **Security & DB:** 1Password CLI/GUI, DBeaver CE.
*   **IDEs & AI:** VS Code, Cursor, Antigravity IDE (via Gemini), ChatGPT Desktop.

## 🚀 Installation

Run the bootstrap script on a fresh Ubuntu machine:

```bash
chmod +x setup.sh
./setup.sh
```

## 🎨 Customizing

All configuration templates (such as `.zshrc` and `starship.toml`) are inside the `roles/dotfiles/files/` directory. Modify them as you wish, and they will be copied during the provisioning.

> Warning: This playbook is highly opinionated. It is designed to create a specific, consistent development environment out-of-the-box.
