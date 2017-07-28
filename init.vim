""""""""""""INIT.VIM"""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""
"
"Config préalable pour ALE
"sudo apt-get install flake8 yapf3
"sudo ln -s /usr/bin/yapf3 /usr/bin/yapf
"
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'  "python completion mieux que deoplete jedi
" Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate' "ajoute "" '' () ensemble
Plug 'https://github.com/tpope/vim-fugitive.git' "git plugin
Plug 'ctrlpvim/ctrlp.vim' "fuzzy fie finde"
Plug 'mhartington/oceanic-next' "color scheme"
Plug 'tpope/vim-commentary'  "ajout instantané de commentaire"
Plug 'vim-airline/vim-airline'   "bar dessus et dessous"
Plug 'tpope/vim-surround'  " selctionne un texte en fonction des guiilements"
Plug 'wellle/targets.vim' "texte selection enhancement"
Plug 'rstacruz/sparkup' "pour les tag html"
Plug 'morhetz/gruvbox' "theme"
Plug 'w0rp/ale' "code verification et correction "
" Plug 'vim-scripts/python.vim--Vasiliev'
Plug 'tmhedberg/SimpylFold' "devine"
 " Plug 'vim-scripts/vim-python-virtualenv' " a tester
Plug 'flazz/vim-colorschemes'
Plug 'svermeulen/vim-easyclip'
Plug 'vim-python/python-syntax'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
call plug#end()

let python_highlight_all = 1
"autocommand
""""""""""""""""""""
"reload apres sav vimrc
autocmd! bufwritepost init.vim source %

"
" Gloable key binding
"""""" REMAPER touche menu en échape """""""""
"  
"xmodmap -e 'keycode 135 = Escape'
"https://www.jwz.org/xkeycaps/

" MAP LEADER
let mapleader = ";"

" Bind nohl
" " Remoes highlight of your last search
" " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :nohl<CR>
"saut de lignne en mode nomal
map <Leader>n o<Esc>
map <Leader>N O<Esc>

" Quicksave command
noremap <Esc> <Esc>:update<CR>
vnoremap <Esc> <Esc>:update<CR>
inoremap <Esc> <Esc>:update<CR>

"assgne Tab à Ctrl N pour supertab
" let g:SuperTabDefaultCompletionType = "<c-n>"

"raccourci pour commenter vim-commentary
noremap <F2> :Commentary<CR>

" ive le pavé directionnel

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" nnoremap ç <Esc> 
" vnoremap ç <Esc>gV 
" onoremap ç <Esc> 
" inoremap ç <Esc>""'^ 
" nowritebackup 
map! ç <Esc> 
"qui  t

noremap <c-X> :quit<CR>  " Quit current window
" easier moving between buffers
map <Leader>, <esc>:bp<CR>
map <Leader>: <esc>:bn<CR>
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

"remplacer en collant
:map <Leader>p ciw<C-r>0<ESC>

"Ctle pour aller en fin de ligne en mode insert
inoremap <C-e> <C-o>

" mappage de mark vu vim-esayclip bloque le "m"
" on fait dierctement mar sur k
nnoremap M mk

" Mouse and backspace
set mouse=a  " on OSX prenbackspace ALT and click
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

syntax enable
set background=dark
" colorscheme wombat256i
colorscheme gruvbox
highlight Comment cterm=bold


""""parametrage completion"""""""
"active deoplete au demarrage
let g:deoplete#enable_at_startup = 1
let g:deoplete_disable_auto_complete = 1
let g:deoplete#auto_complete_start_length = 8
"parametre airline tab

" jedi config
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

"airline
let g:airline#extensions#tabline#enabled = 1
"https://git.framasoft.org/iGormilhit/neovim/blob/master/init.vim

"parametrage ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
let g:ctrlp_map = '<F4>'
map <F3> <esc>:CtrlPBuffer<CR>
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

"Configration de ALE pour la syntax"
let g:ale_fixers = {'python': ['yapf','isort'],}

" symplyFOld
let g:SimpylFold_fold_import = 0

"easy-clip
let g:EasyClipUseSubstituteDefaults = 1


"pour self coloré
augroup PythonCustomization
  " highlight python self, when followed by a comma, a period or a parenth
   :autocmd FileType python syn match pythonStatement "\(\W\|^\)\@<=self\([\.,)]\)\@="
augroup END

"pour keyword hightlighté en partie, à ajouter à python.vim
"syntax match PythonArg "\v[\(\,]\s{-}\zs\w+\ze\s{-}\=(\=)@!"
" hi PythonArg ctermfg = 214 guifg = #ffaf00
"

