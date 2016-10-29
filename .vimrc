" Configuration file for vim
set modelines=0		" CVE-2007-2438
set fileformats=unix,dos
scriptencoding utf-8

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Insert settings
syntax on
set title
set tabstop=4
set softtabstop=4
set expandtab
set nowrap
set number
set visualbell t_vb=

" Keybind
nmap <ESC><ESC> :nohlsearch<cr>

nmap <DOWN>  :cnext<cr>
nmap <UP>    :cprev<cr>
nmap <LEFT>  :colder<cr>
nmap <RIGHT> :cnewer<cr>

nmap <A-LEFT>  :diffget<cr>
nmap <A-RIGHT> :diffput<cr>
nmap <A-DOWN>  ]c
nmap <A-UP>    [c

" Highlight endspace
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

" Font
set guifont=Monaco:h14

" ColorScheme
colorscheme molokai
