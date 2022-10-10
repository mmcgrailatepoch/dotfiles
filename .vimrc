" Marty's custom vim settings
" started: 2015-07-24

" Using vim-plug Plugin Manager: https://github.com/junegunn/vim-plug
" Automatically install, if not already
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory:
call plug#begin('~/.vim/plugged')

" Declare list of plugins:
Plug 'altercation/vim-colors-solarized'

" Plugin list ends here.
call plug#end()

" add tab settings
set tabstop=2
set shiftwidth=2
set expandtab

" turn on autoindent
set autoindent

" make 'delete' key work like a normal text editor
set backspace=2

" enable mouse support
set mouse=a

" setting solarized colorscheme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" highlights cursor line 
set cursorline

" highlight matching parenthesis, braces, et al.
set showmatch

" search incrementally
set incsearch

" Highlight things found with the search
set hlsearch

" always display status line
set laststatus=2

" defining custom highlight groups for statusline
hi User1 ctermbg=blue ctermfg=green guibg=blue guifg=green

" dat statusline, yo. 
set statusline=%c,%l/%L                                 " column,current line/total lines
set statusline+=%=                                      " left/right separator
set statusline+=%1*                                     " switch to User1 highlight
set statusline+=%F                                      " the file name, plus path
set statusline+=%*                                      " switch back to statusline highlight
set statusline+=[%{strlen(&fenc)?&fenc:'none'},%{&ff}]  " file encoding
set statusline+=%h%m%r                                  " registers
set statusline+=%y                                      " file type

" show mode in status bar (INSERT/REPLACE/...)
set showmode

