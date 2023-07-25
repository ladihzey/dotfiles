set -Ux ASDF_CONFIG_FILE $HOME/.config/.asdfrc
set -Ux HOMEBREW /home/linuxbrew/.linuxbrew

set -Ux fish_greeting
set -Ux fish_user_paths \
    $fish_user_paths \
    $HOME/.asdf/bin \
    $HOME/.local/bin \
    $HOME/.cargo/bin \
    $HOMEBREW/bin

# Sourcing Configs ============================================================
starship init fish | source
zoxide init fish --cmd jp | source

source $HOMEBREW/opt/asdf/libexec/asdf.fish
source $HOME/.config/fish/nord-theme.fish

# Aliases =====================================================================
alias md="mkdir"
alias ls="exa --icons --group-directories-first"
alias ll="ls --long --git --no-permissions --no-user"
alias la="ll --all"
alias tree="ls --tree"
alias cat="bat --theme=Nord"
alias find="fd"
alias grep="rg"
alias python="python3"
alias pip="pip3"

alias communion-stg="ssh -i ~/.ssh/communion_staging_key.pem ubuntu@apistaging.joincommunion.xyz"
alias communion-prd="ssh -i ~/.ssh/communion_production_key.pem ubuntu@api.joincommunion.xyz"
