" line - statusline for vim
" Maintainer: Melanie Berkley <http://berkley.io>
" Version: 0.1.0
" License: BSD-2-Clause

set laststatus=2
set statusline=
set statusline+=%#Normal#                      " highlight
set statusline+=%{mode()}                      " mode
set statusline+=\                              " space
set statusline+=\|                             " seperator
set statusline+=\                              " 
set statusline+=%{fugitive#head()}             " git
set statusline+=\                              " 
set statusline+=\|                             " seperator
set statusline+=\                              " 
set statusline+=%<%F                           " filepath/truncate '<'
set statusline+=\                              " 
set statusline+=\|                             " seperator
set statusline+=\                              " 
set statusline+=%t                             " filename
set statusline+=\                              " 
set statusline+=%m                             " modified
set statusline+=%h                             " helpfile
set statusline+=%r                             " read only
set statusline+=%=                             " left/right separator
set statusline+=%{strlen(&fenc)?&fenc:'none'}  " file encoding
set statusline+=\                              " 
set statusline+=%{&ff}                         " file format
set statusline+=\                              " 
set statusline+=%Y                             " filetype
set statusline+=\                              " 
set statusline+=\|                             " separator
set statusline+=\                              " 
set statusline+=%l:%c                          " line/column
set statusline+=\                              " 
set statusline+=%p%%                           " percent through file
set statusline+=\                              " 
set statusline+=\|                             " separator
set statusline+=\                              " 
set statusline+=%{getcwd()}                    " cwd
