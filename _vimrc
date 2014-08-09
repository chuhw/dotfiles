set cindent
set incsearch
set hls
set nu
set ru
set nocompatible
set t_Co=256
set termencoding=utf8
set encoding=utf8
set fileencodings=utf8,big5,gb
set number
set foldmethod=marker
"set mouse=a
set expandtab
set shiftwidth=4
set background=dark
set t_ti= t_te=
set history=50
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set backspace=indent,eol,start

syntax on
au BufNewFile,BufRead *.phtml set filetype=php
au BufNewFile,BufRead *.html set filetype=php
au! BufRead,BufNewFile *.json setfiletype json 
filetype plugin on
au FileType javascript so ~/.vim/indent/javascript.vim
au FileType php so ~/.vim/indent/php.vim

" PHP DOC
source ~/.vim/php-doc.vim 
source ~/.vim/plugin/matchit.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 

" helptags ~/.vim/doc
" set runtimepath+=~/.vim
set keywordprg=

colorscheme desert
" vim -b : edit binary using xxd-format!
augroup Binary
au!
au BufReadPre  *.bin let &bin=1
au BufReadPost *.bin if &bin | %!xxd
au BufReadPost *.bin set ft=xxd | endif
au BufWritePre *.bin if &bin | %!xxd -r
au BufWritePre *.bin endif
au BufWritePost *.bin if &bin | %!xxd
au BufWritePost *.bin set nomod | endif
augroup END

" map <F5> lbi<?= _('<Esc>lwi') ?><Esc>

set complete+=k
