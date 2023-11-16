# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install packages
brew install \
    asdf \
    awscli \
    bat \
    bottom \
    dust \
    exa \
    fd \
    fish \
    fzf \
    just \
    lazygit \
    lf \
    neofetch \
    neovim \
    ripgrep \
    starship \
    stow \
    thefuck \
    watchexec \
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
    bibhasdn.unique-lines \
    bmalehorn.vscode-fish \
    bradlc.vscode-tailwindcss \
    bram209.leptos-language-server \
    bungcip.better-toml \
    EditorConfig.EditorConfig \
    emilast.LogFileHighlighter \
    github.vscode-github-actions \
    GrapeCity.gc-excelviewer \
    Gruntfuggly.todo-tree \
    helgardrichard.helium-icon-theme \
    humao.rest-client \
    mhutchie.git-graph \
    mikestead.dotenv \
    rust-lang.rust-analyzer \
    scala-lang.scala \
    scalameta.metals \
    serayuzgur.crates \
    solomonkinard.reverse \
    streetsidesoftware.code-spell-checker \
    streetsidesoftware.code-spell-checker-russian \
    tamasfe.even-better-toml \
    usernamehw.errorlens \
    vadimcn.vscode-lldb \
    vscodevim.vim \
    VSpaceCode.whichkey \
    waderyan.gitblame \
    yoavbls.pretty-ts-errors
