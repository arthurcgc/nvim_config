" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'christoomey/vim-system-copy'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'srcery-colors/srcery-vim'

" Initialize plugin system
call plug#end()

" setting airline theme
let g:airline_theme='dark'

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


set statusline+=%F
map <C-n> :NERDTreeToggle<CR>

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

" colorscheme gruvbox

set t_Co=256   " This is may or may not needed.
set background=dark

:set number

set autowrite

let g:go_fmt_command = "goimports"

let g:go_highlight_types = 1

let g:go_highlight_fields = 1

let g:go_highlight_functions = 1

let g:go_highlight_function_calls = 1

let g:go_list_type = "quickfix"

set completeopt-=preview

nmap <F8> :TagbarToggle<CR>

syntax on
colorscheme srcery
