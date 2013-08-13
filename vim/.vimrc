let g:SuperTabDefaultCompletionType = "context"
let g:clang_complete_auto = 0
"let g:clang_complete_copen = 1
"set completeopt = menu,menuone,longest

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
"let g:miniBufExplMapCTabSwitchWindows=1

colors torte

" set autoindent
set ai
"
" " set cursorline
"set cul
"
" " set show line numbers
set number
"
" " set tab lenght
set shiftwidth=4
set softtabstop=4
set tabstop=4
"
" " <tab> -> <space>
set expandtab
set tags+=~/vim
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]
set laststatus=2
set showcmd
set history=1000
set wildmenu
set showfulltag
set fillchars=""
set hlsearch
set incsearch
set path=
set path+=/usr/local/include/**
set path+=/usr/include/**
set vb
set ch=2
set ignorecase
set smartcase
filetype on
filetype plugin on
filetype indent on
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1
let g:Tlist_Show_One_File = 1

map <F2> <C-Tab>
map <F1> <C-S-Tab>
imap <F2> <esc><C-Tab>
imap <F1> <esc><C-S-Tab>
vmap <F2> <esc><C-Tab>
vmap <F1> <esc><C-S-Tab>

" F2 -  
"nmap <F2> :w<cr>
"vmap <F2> <esc>:w<cr>i
"imap <F2> <esc>:w<cr>i

" F3 -  
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" F5 -   
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 -  
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 -  
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F8 -  
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F9 - "make" 
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" F10 -  
map <F10> :bd<cr>
vmap <F10> <esc>:bd<cr>
imap <F10> <esc>:bd<cr>

" F11 -   Taglist
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>

" F12 -  
map <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" -q -   Vim 
map <C-Q> <Esc>:qa<cr>


"    
set complete=""
" current buffer  
set complete+=.
" dict  
set complete+=k
" other open buffers   
set complete+=b
" from tags
set complete+=t

if has("cscope")
set csto=0
set cst
set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
    cs add cscope.out . -C
    " else add database pointed to by
    "                     environment
    elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB -C
    endif
endif

:set makeprg=./my_build.sh
setlocal updatetime=300

set expandtab
set shiftwidth=4
set softtabstop=4
set cindent
set cinoptions=(0
" Allow tabs in Makefiles.
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=8
" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=red guibg=red
match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line.
autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/
