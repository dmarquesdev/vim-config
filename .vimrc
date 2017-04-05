call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'scrooloose/NERDTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'heavenshell/vim-jsdoc'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jspc.vim'
Plug 'scrooloose/syntastic'
Plug 'tomasr/molokai', { 'dir': '~/.vim/colors' }
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'mtscout6/syntastic-local-eslint.vim'

call plug#end()

"NERDTree
map <C-M> :NERDTreeToggle<CR>

"Editor relative
colorscheme molokai
set nu
set encoding=utf-8

"Ctrl+Space for completion
inoremap <C-@> <C-p>

"Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.js,*.html,*.css,*.php
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set smartindent |
    \ set fileformat=unix

"Python
au BufNewFile,BufRead *.py
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


let g:ycm_autoclose_preview_window_after_completion=1

let python_highlight_all=1
let g:ycm_python_binary_path='/usr/bin/python3'

"syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

"closetag
let g:closetag_filenames = "*.html,*.xhtml,*.php,*.jsp,*.jsf,*.js"

map <F7> gg=G:%s/\s\+$//e<CR>
