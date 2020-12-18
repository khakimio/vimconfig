" Try to load minpac.
packadd minpac

if !exists('g:loaded_minpac')
  " minpac is not available.

  " Settings for plugin-less environment.
else
  " minpac is available.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#add('morhetz/gruvbox')
  call minpac#add('preservim/nerdtree')
  call minpac#add('Xuyuanp/nerdtree-git-plugin')
  call minpac#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call minpac#add('dense-analysis/ale')
  call minpac#add('jiangmiao/auto-pairs')
  call minpac#add('prettier/vim-prettier', { 'do': 'yarn install' })
  call minpac#add('kien/ctrlp.vim')
  call minpac#add('pangloss/vim-javascript')
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('mattn/emmet-vim')
  call minpac#add('honza/vim-snippets')
  call minpac#add('itchyny/lightline.vim')
  call minpac#add('preservim/nerdcommenter')
  call minpac#add('neovimhaskell/haskell-vim')
  call minpac#add('Valloric/YouCompleteMe')
  
  " Minpac utility commands
  command! PackUpdate call minpac#update()
  command! PackClean call minpac#clean()
  command! PackStatus call minpac#status()
endif

if !has('gui_running')
  set t_Co=256
endif

let g:NERDTreeIgnore = ['^node_modules$']
let mapleader = ','

" ALE
let g:ale_fix_on_save = 1
let b:ale_fixers = ['prettier', 'eslint']
"let g:ale_completion_enabled = 1

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

colorscheme gruvbox
set background=dark
set number
set mouse=a
set cursorline
set nowrap
set nobackup
set nowritebackup
set nowb
set noswapfile
set expandtab
set softtabstop=2
set shiftwidth=2

let NERDTreeShowHidden = 1

map <C-n> :NERDTreeToggle<CR>
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
noremap <Leader>Y "+y noremap <Leader>P "+p
