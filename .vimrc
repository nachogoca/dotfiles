set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Tabs
set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab		" Expand TABs to spaces


" Nice paste formatting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Syntastic status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Always show statusline
set laststatus=2

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

" Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

" Airline statusbar
let g:airline_powerline_fonts = 1
"let g:airline_theme='base16_3024'
let g:airline_theme='tomorrow'
"let g:Powerline_symbols = "fancy"
let g:bufferline_echo = 0

" Shortcut to hide status bar
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>

" Let comma as map leader
let mapleader=","

" Can copy from vim
set clipboard=unnamedplus


""" UI config
" Show line numbers
set number

" load filetype-specific indent files
filetype indent on

" visual autocomplete for command menu
set wildmenu

" highlight matching [{()}]
set showmatch


""" 
" Searching

" highlight matches
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" change between windows
nmap <leader>l <C-w>w
