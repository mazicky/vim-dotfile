set nu                    " Line number
set tabstop=2             " Size of tab
set expandtab             " convert all tab input to spaces
retab                     " convert existing tabs to spaces
set shiftwidth=2          " the number of spaces inserted for indention
set hlsearch              " Highlight searched keyword
set incsearch             " Incremental search
syntax on                 " Syntax highlightingcall 

"For vimwiki
set nocompatible
filetype plugin on

"NERDTree directory color
hi Directory guifg=#FF0000 ctermfg=red

"neomake 
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost,BufEnter *.js Neomake

"airline
let g:airline#extensions#tabline#enabled = 1

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " FuzzyFinder
Plug 'neomake/neomake'
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'edkolev/tmuxline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'chrisbra/Colorizer', { 'on': 'ColorToggle' }
Plug 'vimwiki/vimwiki'
call plug#end()

"deoplete
let g:deoplete#enable_at_startup = 1

" Fuzzy Search Ctrl+P shortcut
nnoremap <C-p> :FZF<CR>
nnoremap <C-y> :ColorToggle<CR>
nnoremap <C-u> :noh<CR>

" Devicons
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
let g:airline_powerline_fonts = 1

" Vimwiki remap
nnoremap <Leader>tt :VimwikiToggleListItem<CR>

" Input Switcher
if has('mac') && filereadable('/usr/local/lib/libInputSourceSwitcher.dylib')
  autocmd InsertLeave * call libcall('/usr/local/lib/libInputSourceSwitcher.dylib', 'Xkb_Switch_setXkbLayout', 'com.apple.keylayout.ABC')
endif
