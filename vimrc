call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'storyn26383/vim-vue'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'ycm-core/YouCompleteMe'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'zxqfl/tabnine-vim'
call plug#end()

colorscheme gruvbox
let g:user_emmet_leader_key=','
let g:mapleader=','
set number
set noswapfile 
set tabstop=2
set expandtab
set shiftwidth=2
set smarttab
set hlsearch
set incsearch
set mouse=a
syntax on

let NERDTreeShowHidden=1
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:airline_theme='ouo'
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)


map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

if has('python')
  let g:jedi#force_py_version = 2
  let g:syntastic_python_python_exec = 'python2'
  let g:pymode_python = 'python2'
elseif has('python3')
  let g:jedi#force_py_version = 3
  let g:syntastic_python_python_exec = 'python3'
  let g:pymode_python = 'python3'
else
  let g:loaded_jedi = 1
endif
