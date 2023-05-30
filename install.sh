# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install packages
brew install \
    asdf \
    bat \
    bottom \
    exa \
    fd \
    fish \
    fzf \
    lazygit \
    neovim \
    ripgrep \
    starship \
    stow \
    thefuck \
    zellij \
    zoxide

# Install NodeJS
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Link .dotfiles
stow config

# Set fish as a default shell
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)

# Install vscode extensions
code --install-extension \
    arcticicestudio.nord-visual-studio-code \
    bmalehorn.vscode-fish \
    bungcip.better-toml \
    EditorConfig.EditorConfig \
    Gruntfuggly.todo-tree \
    helgardrichard.helium-icon-theme \
    mikestead.dotenv \
    rust-lang.rust-analyzer \
    serayuzgur.crates \
    streetsidesoftware.code-spell-checker \
    streetsidesoftware.code-spell-checker-russian \
    usernamehw.errorlens \
    vadimcn.vscode-lldb \
    vscodevim.vim \
    VSpaceCode.whichkey \
    waderyan.gitblame

