# Variables
DOTFILES=~/dotfiles

# Create symlinks
mkdir -p ~/.config/alacritty

ln -sf ${DOTFILES}/tools/alacritty.yml      ~/.config/alacritty/alacritty.yml
ln -sf ${DOTFILES}/tools/gitconfig          ~/.gitconfig
ln -sf ${DOTFILES}/tools/starship.toml      ~/.config/startship.toml
ln -sf ${DOTFILES}/fish/config.fish         ~/.config/fish/config.fish
ls -sf ${DOTFILES}/vscode/settings.json     ~/.config/Code/User/settings.json
ls -sf ${DOTFILES}/vscode/keybindings.json  ~/.config/Code/User/keybindings.json
