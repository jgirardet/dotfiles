colorscheme darkblue

call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', {'for': ['python']}
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'https://github.com/tpope/vim-fugitive.git'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

https://git.framasoft.org/iGormilhit/neovim/blob/master/init.vim
