"
" Preamble
"
set encoding=utf-8
set nocompatible

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

