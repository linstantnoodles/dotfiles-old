runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" solarized theme
set background=light
" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 256
colorscheme solarized

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
autocmd BufNewFile,BufReadPost *.coffee setl ts=2 sts=2 sw=2 expandtab
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
set timeout timeoutlen=1000
imap jj <esc>

" Restrict trailing whitespace removal to certain files
autocmd FileType c,cpp,java,php,javascript autocmd BufWritePre <buffer> :%s/\s\+$//e

"" Backup and swap files

" Where to put backup files.
set backupdir^=~/.vim/_backup/
" Where to put swap files.
set directory^=~/.vim/_temp/

" Key window navigation mappings
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Ctag and taglist mappings
let Tlist_Ctags_Cmd = "/usr/bin/ctags-exuberant"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
map <F8> :!/usr/bin/ctags-exuberant -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" ctrlP mapping
nmap <silent> <Bslash> :CtrlP<CR>

" Nerdtree toggle
nmap <silent> <C-n> :NERDTreeToggle<CR>

" Notify when exceed max line length
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

