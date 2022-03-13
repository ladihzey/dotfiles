if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Settings ====================================================================
set fish_greeting
fish_add_path $VOLTA_HOME/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/bin

# Utilities ===================================================================
starship init fish | source
set -gx VOLTA_HOME "$HOME/.volta"

# Aliases =====================================================================
alias md="mkdir"
