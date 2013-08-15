set ignorecase
set smartcase
" Use spaces instead of tab
set expandtab
" Size of tab
set tabstop=4
" Amount of spaces to use for indentation
set shiftwidth=4
set softtabstop=4

" Set file specific spacing settings
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" List chars
set list
set listchars=""
set listchars=tab:>-
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

" Highlight matches
set hlsearch
" Incremental search
set incsearch
" Searches are case insensitive
set ignorecase
" Unless they contain at least one capital letter
set smartcase

" Key mappings
imap jj <Esc>

" Restrict trailing whitespace removal to certain files
autocmd FileType c,cpp,java,php,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e
