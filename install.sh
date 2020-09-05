# Variables
DOTFILES_DIR=~/dotfiles

# Create symlinks
mkdir -p ~/.config/nvim
# mkdir -p ~/.config/alacritty

ln -sf ${DOTFILES_DIR}/vim/init.vim           ~/.config/nvim/init.vim
# ln -sf ${DOTFILES_DIR}/terminal/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -sf ${DOTFILES_DIR}/zsh/zshrc              ~/.zshrc
ln -sf ${DOTFILES_DIR}/git/gitconfig          ~/.gitconfig
ln -sf ${DOTFILES_DIR}/tmux/tmux.conf         ~/.tmux.conf
ln -sf ${DOTFILES_DIR}/terminal/dir_colors    ~/.dir_colors

# Set zsh as the default shell
sudo chsh -s /bin/zsh
