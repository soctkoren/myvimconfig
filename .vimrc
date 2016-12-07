set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Let vundle manage itself:
Bundle 'gmarik/vundle'

" Nerd tree
Bundle 'scrooloose/nerdtree'

" Git gutter
Bundle 'airblade/vim-gitgutter'

" Fuzzy finder -- absolutely must have.
Bundle 'kien/ctrlp.vim'

" Support for easily toggling comments.
Bundle 'tpope/vim-commentary'

Bundle 'altercation/vim-colors-solarized'

Bundle 'tpope/vim-surround'
" In addtion to the above plugins, you'll likely need some for individual
" non-standard syntaxes that aren't pre-bundled with vim. Here are some I use,
" these are required for me, but depending on what code you write, obviously
" this may differ for you.

" Proper JSON filetype detection, and support.
Bundle 'leshill/vim-json'

" vim already has syntax support for javascript, but the indent support is
" horrid. This fixes that.
Bundle 'pangloss/vim-javascript'

" vim indents HTML very poorly on it's own. This fixes a lot of that.
Bundle 'indenthtml.vim'
    
" I write markdown a lot. This is a good syntax.
Bundle 'tpope/vim-markdown'

" LessCSS -- I use this every day.
Bundle 'groenewege/vim-less'

" Coffee-script syntax.
Bundle 'kchmck/vim-coffee-script'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?
set showcmd
" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block
" leader is a key that allows you to have your own "namespace" of keybindings.
" You'll see it a lot below as <leader>
 let mapleader = ","

" create new vsplit, and switch to it.
 noremap <leader>v <C-w>v

" bindings for easy split nav
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" For NERDTree
 :set mouse=a
 let g:NERDTreeMouseMode=3

" airline
set laststatus=2

syntax enable
set background=dark
colorscheme solarized
