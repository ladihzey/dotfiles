set -U ASDF_CONFIG_FILE $HOME/.config/.asdfrc
set -U HOMEBREW /home/linuxbrew/.linuxbrew

set -U fish_greeting
set -U fish_user_paths \
    $HOME/.asdf/bin \
    $HOME/.cargo/bin \
    $HOMEBREW/bin \
    $fish_user_paths

# Utilities ===================================================================
starship init fish | source
zoxide init fish | source
source $HOMEBREW/opt/asdf/libexec/asdf.fish
source $HOME/.config/fish/nord-theme.fish

# Aliases =====================================================================
alias md="mkdir"
alias ls="exa --icons --group-directories-first"
alias ll="ls --long --git --no-permissions --no-user"
alias la="ll --all"
alias tree="ls --tree"
alias cat="bat --theme=Nord"
alias grep="rg"

function envsource
  for line in (cat $argv | grep -v '^#')
    set item (string split -m 1 '=' $line)
    set -gx $item[1] $item[2]
    echo "Exported key $item[1]"
  end
end

