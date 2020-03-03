" Try to load minpac.
packadd minpac

if !exists('*minpac#init')
  " minpac is not available.

else
  " minpac is available.
  " init with verbosity 3 to see minpac work
  call minpac#init({'verbose': 3})
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('altercation/vim-colors-solarized')
  call minpac#add('itchyny/lightline.vim')
  call minpac#add('prettier/vim-prettier')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-endwise')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-surround')
  
  call minpac#add('scrooloose/nerdtree', { 'on':  'NERDTreeToggle' })
  call minpac#add('easymotion/vim-easymotion')
  call minpac#add('tpope/vim-surround')
  call minpac#add('jiangmiao/auto-pairs')
  call minpac#add('dense-analysis/ale')
  call minpac#add('jiangmiao/auto-pairs')
  call minpac#add('ycm-core/YouCompleteMe')
  
"  call minpac#add('vim-airline/vim-airline')
"  call minpac#add('vim-airline/vim-airline-themes')
  
  
  " minpac utility commands
  command! PackUpdate call minpac#update()
  command! PackClean call minpac#clean()
  command! PackStatus call minpac#status()

endif

set number
set noswapfile
set mouse=a

" Don't redraw while executing macros (good performance config)
set lazyredraw
set ttyfast
set shortmess+=c

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

set hidden
set nofoldenable
set wrap
set linebreak
set number
set hlsearch
set ignorecase
set smartcase

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

set showcmd       " display incomplete commands

" Use one space, not two, after punctuation.
" set nojoinspaces

" set softtabstop=4
set expandtab

" set noexpandtab
set softtabstop=2
set shiftwidth=2
set updatetime=100
set splitbelow
set cmdheight=2
set signcolumn=yes
set scrolloff=3

" set visualbell
set completeopt=noinsert,menuone,noselect
set complete+=kspell

let g:user_emmet_leader_key=','
let g:mapleader=','

" for JavaScript files, use `eslint` (and only eslint)
let g:ale_linters = { 'javascript': ['eslint'] }

" mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

let NERDTreeShowHidden = 1
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
