call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

set number
set tabstop=2
set expandtab
set hlsearch
set incsearch
syntax on
colorscheme gruvbox
set background=dark


" mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr()) "we havent moved
    if (match(a:key,'[jk]')) "were we going up/down
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>
