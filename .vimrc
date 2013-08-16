runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" Set colors to 256
set t_Co=256
colorscheme badwolf
" Always in paste mode
set paste
" Allow backspace
set backspace=2
" Set linenumbers
set number
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


""
"" Backup and swap files
""

" Where to put backup files.
set backupdir^=~/.vim/_backup//
" Where to put swap files.
set directory^=~/.vim/_temp//

" Key window navigation mappings
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
