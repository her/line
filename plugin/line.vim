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
set statusline+=%{fugitive#head()}

" filename
set statusline+=\ 
set statusline+=[%t]

" modified/read_only
set statusline+=\ 
set statusline+=%{&modified?'+\ ':''}
set statusline+=%{&readonly?'🔒\ ':''}

" left-right seperator
set statusline+=%=
set statusline+=\ 
set statusline+=\|
set statusline+=\ 

" truncate/file_encoding
set statusline+=%<
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

" percent through file / '%< truncate'
set statusline+=\ 
set statusline+=%<%p%%

" filepath/truncate '<'
set statusline+=\ 
set statusline+=\|
set statusline+=\ 
set statusline+=%f
