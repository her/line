" line - statusline for vim
" Maintainer: Melanie Berkley <http://berkley.io>
" Version: 0.2.0
" License: BSD-2-Clause

" highlight groups
" %#Normal#
" %#Directory#
" %#LineNr#

" space/git
set statusline+=\ 
set statusline+=%#Directory#
set statusline+=%{fugitive#head()}
set statusline+=%#Normal#

" filename
set statusline+=\ 
set statusline+=[%t]

" modified/read_only
set statusline+=\ 
set statusline+=%{&modified?'+\ ':''}
set statusline+=%{&readonly?'🔒\ ':''}

" left-right seperator
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=\ 

" ASCII code
set statusline+=\ (\%b
set statusline+=\|
" Byte code
set statusline+=0x%B\)

" Buffer number
set statusline+=\ Buf:%n
set statusline+=\ 

" truncate/file_encoding
set statusline+=%{strlen(&fenc)?&fenc:''}

" file_format
set statusline+=\ 
set statusline+=%{&ff}

" filetype
set statusline+=\ 
set statusline+=%Y

" separator
set statusline+=\ 
set statusline+=\|

" line/column
set statusline+=\ 
set statusline+=%l:%c

" percent through file
set statusline+=\ 
set statusline+=%p%%

set statusline+=\ 
set statusline+=\|
set statusline+=\ 

" '%<' truncate
set statusline+=%<

" filepath
set statusline+=%f
