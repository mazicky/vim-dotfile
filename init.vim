set nu                    " Line number
set tabstop=2							" Size of tab
set hlsearch              " Highlight searched keyword
set incsearch             " Incremental search
syntax on                 " Syntax highlightingcall 

let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost,BufEnter *.js Neomake

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " FuzzyFinder
Plug 'neomake/neomake'
call plug#end()

" Fuzzy Search Ctrl+P shortcut
nnoremap <C-p> :FZF<CR>
