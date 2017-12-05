"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/fnivek/.local/share/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/fnivek/.local/share/dein/')
  call dein#begin('/home/fnivek/.local/share/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/fnivek/.local/share/dein//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('kien/ctrlp.vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('morhetz/gruvbox')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" Plugin settings
set termguicolors
set background=dark
colorscheme gruvbox

" Show lines number
set number

" Add a ruler at 101
set colorcolumn=101

" Tabs
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Fix bad characters
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set guicursor=
