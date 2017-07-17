set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'python-mode/python-mode'
Plugin 'ervandew/supertab'
Plugin 'LustyExplorer'
Plugin 'jnurmine/Zenburn'
Plugin 'Solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
"
call vundle#end()            " required
filetype plugin indent on    " required


let g:pymode_python = 'python3'

" -- Affichage
set title       "MEt à jour le titre des fenetres"
set ruler       "affice la position du curseur
set wrap        "affiches lignes trop longues sur plusieurs lignes
set scrolloff=3 "Affiche 3 ligne mini autour du curseur
set nu

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

"Utilise la version sombre ou clar de solarized
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif
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
nnoremap Q :q<CR>


"moover entre les buffers"
nnoremap <Leader>; :bp<CR>

let g:airline#extensions#tabline#enabled = 1

set autochdir
