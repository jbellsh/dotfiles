" VimRC
" Get started! No vi-compat
set nocompatible
""""""""""""""""""""""""""
" File Syntax settings
""""""""""""""""""""""""""
" Set .md files to markdown
autocmd FileType md      set filetype=markdown
" set spellcheck and indent folding on txt files
autocmd FileType txt     set foldmethod=indent spell spelllang=en_us
" YAML needs 2-space tabs, HTML and Haskell are just better that way
autocmd FileType yaml    set ts=2 sts=2 sw=2 noautoindent
autocmd FileType html    set ts=2 sts=2 sw=2 noautoindent
autocmd FileType haskell set ts=2 sts=2 sw=2 noautoindent
""" And a few extra for bash
autocmd FileType sh      let g:is_bash=1
" Fold 5 is a *little* much, mostly functional
autocmd FileType sh      let g:sh_fold_enabled=5
autocmd FileType sh      set foldmethod=syntax
""""""""""""""""""""""""""
" Other Syntax settings
""""""""""""""""""""""""""
syntax on
filetype plugin indent on
""""""""""""""""""""""""""
" Colorscheme
""""""""""""""""""""""""""
let g:solarized_contrast="low"
set background=dark
colorscheme solarized
""""""""""""""""""""""""""
" 4-space tabs
""""""""""""""""""""""""""
set shiftwidth=4  " Indents have width of 4
set softtabstop=4 " Width of TAB is 4
set expandtab     " Expand tabs to spaces
set smarttab      " Expand in a smart way (read docs lol)
set autoindent    " Open new line to current indent level
""""""""""""""""""""""""""
" Set dictionary
""""""""""""""""""""""""""
set spell spelllang=en_us
set dictionary=/usr/share/dict/linux.words
""""""""""""""""""""""""""
" Miscellaneous Settings
""""""""""""""""""""""""""
set number       " Show line numbers
set showmatch    " Show matching parens and brackets
set laststatus=2 " Show statusline at all times
set autochdir    " Automatically change dir to file directory
""""""""""""""""""""""""""
" Persistent undo
""""""""""""""""""""""""""
""" Source: https://sidneyliebrand.io/blog/vim-tip-persistent-undo
" guard for distributions lacking the persistent_undo feature.
if has('persistent_undo')
    " define a path to store persistent_undo files.
    let target_path = expand('~/.vim/undo_history/')
    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call system('mkdir -p ' . target_path)
    endif
    " point Vim to the defined undo directory.
    let &undodir = target_path
    " finally, enable undo persistence.
    set undofile
endif
""""""""""""""""""""""""""
" Custom keybinds
""""""""""""""""""""""""""
" The obvious and common solution to no write permissions
cmap w!! w !sudo tee > /dev/null %
" Macro: D function for yanking
map Y y$
" (Ctrl-H) Open netrw
map <C-H> :Lexplore<CR>
" (Ctrl-N) Clear search highlighting
map <C-N> :noh<CR>
""""""""""""""""""""""""""
" EasyAlign Macros
""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (i.e. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign in normal mode (i.e. gaip)
nmap ga <Plug>(EasyAlign)
" Macro: Align lines from 2nd to last on colons
let @p = '2ggVGga-:'
""""""""""""""""""""""""""
" Autocomplete goodness
""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete " Why haven't I been using this?! Amazing
""""""""""""""""""""""""""
" Netrw settings
""""""""""""""""""""""""""
let g:netrw_banner       = 0
let g:netrw_liststyle    = 3
let g:netrw_browse_split = 4
let g:netrw_altv         = 1
let g:netrw_winsize      = 25
""""""""""""""""""""""""""
" Airline settings
""""""""""""""""""""""""""
" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
" Enable proper powerline font glyphs
let g:airline_powerline_fonts            = 1
" Let airline use ale extensions
let g:airline#extensions#ale#enabled     = 1
