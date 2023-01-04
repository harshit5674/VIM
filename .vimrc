set background=dark
"highlight Normal ctermfg=white ctermbg=darkblue
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set number relativenumber
set nowrap
set smartcase
set incsearch

set backspace=indent,eol,start


map <C-c> :s/^/\/\//<Enter> 
map <C-u> :s/^\/\///<Enter>

set timeoutlen=1000

set ttimeoutlen=0

autocmd vimEnter *.cpp map <F5> :w <CR> :!clear ; g++-12 -O2 --std=c++17 %;if [ -f a.out ]; then time ./a.out; rm a.out;fi <CR>
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd vimEnter *.java map<F5> :w <CR> :!clear ; javac %:t<CR> :! java %:t:r<CR>
autocmd vimEnter *.asm map <F5> :w <CR>
colorscheme gruvbox


let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

hi Comment ctermfg=grey
