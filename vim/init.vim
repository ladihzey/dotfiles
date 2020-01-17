call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

let g:lightline = {
    \ 'colorscheme': 'nord',
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
    \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
    \ },
\ }

colorscheme nord
syntax on

set ignorecase
set autoread
set mouse=a
set noshowmode
set t_Co=256
set scrolloff=1
set cursorline
set number
set list
set listchars=tab:┊\ ,space:∙,trail:✕
set fillchars+=vert:│
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

let NERDTreeAutoDeleteBuffer = 1
let g:EasyMotion_smartcase = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_map = '<C-P>'

let mapleader = "\<Space>"
inoremap df <esc>
vnoremap v <esc>
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>r :so $MYVIMRC<Enter>
nnoremap <silent> <Leader>c :e $MYVIMRC<Enter>
nnoremap <silent> <Leader>h :nohlsearch<Enter>
nmap s <Leader><Leader>s
vmap s <Leader><Leader>s

set splitbelow
set splitright

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

