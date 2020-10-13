" FINDING FILES

" - Search down into subfolders
"   This provides tab-completion for all file related tasks
set path+=**

" - Display all matching files when we tab complete
set wildmenu

" Now we can hit tab to :find by partial match
" using * to make it fuzzy
" Things to consider:
"  - :b lets you autocomplete any open buffer
"  - :ls lists all open buffers

" FILE BROWSING
" Tweaks for browsing files inside vim
let g:netrw_banner=0		"disable annoying banner
let g:netrw_browse_split=4	"open in prior window
let g:netrw_altv=1		"open splits to the right
let g:netrw_liststyle=3		"tree view

" Now we can:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split tab
" - check |netrw-browse-maps| for more mappings

syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=$HOME/.vim/undodir
set undofile
set incsearch

" 

"set colorcolumn=80
"highlight ColorColumn ctermgb=0 guibg=lightgrey

" =====================================================
"			REMAPPING
" =====================================================

" split navigation
" use :sp or :vs to open a file in horizontal or vertical view
" user ctrl+j, k, l, h to move among panes

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd BufNewFile,BufRead *.md set filetype=markdown
"autocmd FileType markdown nnoremap <C-P> :!pandoc % -f markdown -t html -s -o README.html && google-chrome-stable README.html & disown<enter>
autocmd FileType markdown nnoremap <C-P> :!google-chrome-stable % & disown <CR>

"autocmd BufNewFile,BufRead *.tex set filetype=latex
autocmd BufNewFile,BufRead *.tex  nnoremap <C-P> :!pdflatex -output-directory=. -jobname=document % && zathura document.pdf & disown <CR>
autocmd BufNewFile,BufRead *.tex  nnoremap <C-B> :!pdflatex -output-directory=. -jobname=document % <CR>

" =====================================================
"			PLUGINS
" =====================================================
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()
