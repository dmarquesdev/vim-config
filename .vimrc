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

call plug#end()

"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let g:ycm_autoclose_preview_window_after_completion=1

"python with virtualenv support
python3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
let g:ycm_pythob_binary_path='/usr/bin/python3'

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

"closetag
let g:closetag_filenames = "*.html,*.xhtml,*.php,*.jsp,*.jsf,*.js"
