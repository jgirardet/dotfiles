set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wombat256.vim'
Plugin 'xoria256.vim'
Plugin 'tomtom/tcomment_vim'
"Plugin 'python-mode/python-mode'
"Plugin 'ervandew/supertab'
"Plugin 'LustyExplorer'
"Plugin 'jnurmine/Zenburn'
"Plugin 'Solarized'
"Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tell-k/vim-autopep8'
Plugin 'tpope/vim-surround'
Plugin 'mjbrownie/vim-htmldjango_omnicomplete'
call vundle#end()            " required
filetype plugin indent on    " required


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Bind nohl
" " Removes highlight of your last search
" " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

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

"active la coloration syntaxique
syntax enable
set encoding=utf-8
" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


"Utilise la version sombre ou clar de solarized
colorscheme wombat256mod


"eesactive le pavé directionnel

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

let mapleader = ","
" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows


"moover entre les buffers"
" easier moving between tabs
map <Leader>n <esc>:bprevious<CR>
map <Leader>; <esc>:bNext<CR>

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

let g:airline#extensions#tabline#enabled = 1

"parametrage ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

"Better navigating through omnicomplete option list
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" jedi config
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


"syntasticconfig
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes', 'python']

"autopep8 config

"fjango html complete
au FileType htmldjango set omnifunc=htmldjangocomplete#CompleteDjango
au FileType htmldjango inoremap {% {%  %}<left><left><left>
au FileType htmldjango inoremap {{ {{ }}<left><left><left>
