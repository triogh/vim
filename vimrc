"""""""""""""""""""""""""""""""
"""""""" General conf """""""""
"""""""""""""""""""""""""""""""
" comments


" visual bell
set vb

" incremental search
set incsearch

" syntax highlighting
syntax on
"set bg=light

" colorscheme
colorscheme ron

" general indenting
set autoindent
"set smartindent

" detect filetype
filetype on
filetype plugin on
"filetype indent on
"filetype plugin indent on

" 4 space tabs
set tabstop=4
set shiftwidth=4
set expandtab
"set softtabstop=4

" paste mode is disabled
set nopaste

" line numbers are not shown
set nonumber

" Shift + k calls perldoc -f on keyword where the cursor is at
set keywordprg=perldoc\ -f

" pressing F2 will open Vertical explore
map <F2> :Vexplore<CR>
" pressing F3 will show hidden characters
map <F3> :set list!<CR><Esc>
" pressing F4 will run perl -c (syntax check) on the file currently being edited
map <F4> :!perl -c %<CR>
" pressing F5 will show/hide line numbers
map <F5> :set number!<CR><Esc>
" pressing F6 will enable/disable paste mode
map <F6> :set paste!<CR><Esc>

"""""""""""""""""""""""""""""""
"""""""" Perl specific """"""""
"""""""""""""""""""""""""""""""

" indenting
"autocmd FileType perl set smartindent
"
"autocmd FileType perl set tabstop=4
"autocmd FileType perl set shiftwidth=4
"autocmd FileType perl set expandtab
"autocmd FileType perl set softtabstop=4

" template for .pl files
autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e.template

" perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Tidy selected lines (or entire file) with _t:
"nnoremap <silent> _t :%!perltidy -q<Enter>
"vnoremap <silent> _t :!perltidy -q<Enter>

" Deparse obfuscated code
"nnoremap <silent> _d :.!perl -MO=Deparse 2>/dev/null<cr>
"vnoremap <silent> _d :!perl -MO=Deparse 2>/dev/null<cr>

" show matching brackets
autocmd FileType perl set showmatch

" check perl code with :make
"autocmd FileType perl set makeprg=perl\ -c\ %\ $*
"autocmd FileType perl set errorformat=%f:%l:%m
"autocmd FileType perl set autowrite

"""""""""""""""""""""""""""""""
""""""""""" Syntastic """""""""
"""""""""""""""""""""""""""""""
":help Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ["perl"]
"let g:syntastic_mode_map = { "mode": "passive" }
let g:syntastic_auto_jump = 3
let g:syntastic_perl_lib_path = [ './lib' ] 
