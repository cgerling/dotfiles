"
" Preamble
"
set encoding=utf-8
set nocompatible

"
" Plug
"

" Setup
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin(data_dir . '/plugs')

Plug 'prabirshrestha/async.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'srstevenson/vim-picker'
Plug 'elixir-editors/vim-elixir', {'for': 'elixir'}
Plug 'mhinz/vim-mix-format', {'for': 'elixir'}

call plug#end()

"
" Editing
"
filetype plugin indent on
set clipboard=unnamed
set ruler
set showmatch
set showmode
syntax on

" Autosave
augroup autosave_buffer
	au FocusLost,WinLeave * :silent! wa
	au FocusGained,BufEnter * :silent! !
augroup END

" Lines
augroup autoswitch_number_relativenumber
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
set number relativenumber
set scrolloff=50

" Search
set hlsearch
nnoremap <CR> :noh<CR>

" Spacing
set autoindent
set backspace=indent,eol,start
set copyindent
set expandtab
set shiftwidth=2
set smarttab
set tabstop=2

"
" Windowing
"
set splitbelow
set splitright

" Navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

"
" netrw
"
let g:netrw_liststyle = 3
let g:netrw_banner = 0

