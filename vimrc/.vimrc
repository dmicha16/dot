" This is a vimrc meant for vim configurations when needing to work on server
" environments


" General
filetype plugin indent on " Enable file type detection, plugins, and indenting
syntax on                 " Enable syntax highlighting

" Interface
set number                " Show line numbers
set relativenumber        " Relative line numbers for easy navigation
set cursorline            " Highlight the current line
set showcmd               " Display incomplete commands in the bottom right
set showmode              " Display current mode (INSERT, etc.)
set ruler                 " Show the cursor position in the status line
set laststatus=2          " Always show the status line

" Editing
set wrap                  " Enable line wrapping
set breakindent           " Preserve indentation for wrapped lines
set linebreak             " Break lines at word boundaries
set tabstop=4             " Number of spaces for a tab
set shiftwidth=4          " Number of spaces to use for autoindent
set expandtab             " Use spaces instead of tabs
set autoindent            " Copy indent from the current line
set smartindent           " Smart indentation for code
set backspace=indent,eol,start " Allow backspace in insert mode everywhere

" Searching
set ignorecase            " Case insensitive searching
set smartcase             " Case-sensitive if uppercase is used in search
set incsearch             " Show search results as you type
set hlsearch              " Highlight search results
set noerrorbells          " Disable annoying bells
set novisualbell          " Disable visual bells
set timeoutlen=500        " Faster timeout for mappings

" Files and Buffers
set hidden                " Allow switching between buffers without saving
set undofile              " Enable persistent undo

" Splits
set splitright            " Open vertical splits to the right
set splitbelow            " Open horizontal splits below
set equalalways           " Equalize window sizes on split

nnoremap <C-d> <C-d>zz   " Center screen after moving half a page down
nnoremap <C-u> <C-u>zz   " Center screen after moving half a page up

" Map Ctrl+A in normal mode to select all text
nnoremap <C-a> ggVG


set clipboard=unnamedplus " Use system clipboard
