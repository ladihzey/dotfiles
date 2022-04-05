# Variables
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/.cargo/bin $HOME/bin $VOLTA_HOME/bin $fish_user_paths

# Settings ====================================================================
set fish_greeting

# Utilities ===================================================================
starship init fish | source               # starship
thefuck --alias | source                  # thefuck
set -gx VOLTA_HOME "$HOME/.volta"         # volta

# Aliases =====================================================================
alias md="mkdir"
