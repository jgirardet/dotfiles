colorscheme darkblue

call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi', {'for': ['python']}
"Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nono/github_vim_theme'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'rstacruz/sparkup'
call plug#end()



"autocommand
""""""""""""""""""""
"reload apres sav vimrc
autocmd! bufwritepost init.vim source %
"

" Gloable key binding
"
" MAP LEADER
let mapleader = ";"

" Bind nohl
" " Removes highlight of your last search
" " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <Esc> <Esc>:update<CR>
vnoremap <Esc> <Esc>:update<CR>
inoremap <Esc> <Esc>:update<CR>

"assgne Tab à Ctrl N pour supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

"raccourci pour commenter vim-commentary
noremap <F2> :Commentary<CR>

" ive le pavé directionnel

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map ;; <Esc>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
imap ;; <Esc>


"quit
noremap <c-x> :quit<CR>  " Quit current window
" easier moving between buffers
map <Leader>, <esc>:bprevious<CR>
map <Leader>: <esc>:bNext<CR>
map <Leader>! <esc>:bdelete<CR>

" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" -- Affichage
set title       "MEt à jour le titre des fenetres"
set ruler       "affice la position du curseur
set wrap        "affiches lignes trop longues sur plusieurs lignes
set scrolloff=3 "Affiche 3 ligne mini autour du curseur
set nu
set relativenumber
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233
"-- Recherche
set ignorecase
set smartcase   "Reactive cass si maj dans recherche
set incsearch   "surligne les résulats de recherch pendant la saisie
set hlsearch    "surligne les resultats de recherche

"--beep
set visualbell  "block le beep
set noerrorbells        "idem

"active le comportement habituel de backspace
set backspace=indent,eol,start

"cache les fichiers lors de l'ourerture d'autres fichiers
set hidden

"inactive la souvegarde tempraire
set nobackup
set nowritebackup
set noswapfile

set encoding=utf-8
" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

colorscheme OceanicNext









""""parametrage completion"""""""
"active deoplete au demarrage
let g:deoplete#enable_at_startup = 1

" jedi config
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

"airline
let g:airline#extensions#tabline#enabled = 1
"https://git.framasoft.org/iGormilhit/neovim/blob/master/init.vim
