syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'kjwon15/vim-transparent'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

colorscheme PaperColor
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:netrw_browse_split=2
let g:netrw_banner=0
let g_ctrlp_use_caching = 0

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nnoremap <silent><leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent><leader>gf :YcmCompleter FixIt<CR>
