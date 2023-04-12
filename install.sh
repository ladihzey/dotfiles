# Installing nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# Sourcing nix
. ~/.nix-profile/etc/profile.d/nix.sh

# Install packages
export NIXPKGS_ALLOW_UNFREE=1
nix-env -iA \
    nixpkgs.dbeaver \
    nixpkgs.vscode \
    nixpkgs.alacritty \
    nixpkgs.neovim \
    nixpkgs.fish \
    nixpkgs.exa \
    nixpkgs.bat \
    nixpkgs.starship \
    nixpkgs.ripgrep \
    nixpkgs.stow \
    nixpkgs.zellij

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Link .dotfiles
stow config
