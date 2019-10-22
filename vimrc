set nobackup
set showmatch
set list
set listchars=tab:->,trail:_
set expandtab
set title
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set clipboard=unnamed
set wrap
set backspace=indent,eol,start
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/hikaru/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/hikaru/.cache/dein')
  call dein#begin('/home/hikaru/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/hikaru/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('prabirshrestha/async.vim')
  call dein#add('prabirshrestha/vim-lsp')
  call dein#add('prabirshrestha/asyncomplete.vim')
  call dein#add('prabirshrestha/asyncomplete-lsp.vim')

  call dein#add('cocopon/iceberg.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" vim-lsp for python language server
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

" asyncomplete TAB completion config
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" Required:
filetype plugin indent on
syntax enable
colorscheme iceberg
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
