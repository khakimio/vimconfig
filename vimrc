call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'storyn26383/vim-vue'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'bdchd/neoformat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins'  }

call plug#end()

let g:mapleader=','
set number
set noswapfile 
set tabstop=2
set expandtab
set hlsearch
set incsearch

syntax on
set background=dark

set noerrorbells                " No beeps
set number                      " Show line numbers
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.

set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set nowritebackup
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set hidden
set ruler                       " Show the cursor position all the time

set noshowmode                  " We show the mode with airline or lightline
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

set ttyfast
set conceallevel=0
set wrap
set formatoptions=qrn1
set autoindent
set showmatch
set smarttab
set shiftwidth=2
set guifont=Monaco:h20

colorscheme gruvbox
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

