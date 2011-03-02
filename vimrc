filetype on
filetype off
filetype plugin on
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible
set modelines=0
set whichwrap=b,s,h,l,<,>,[,]
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set syntax=on
syntax on
set number
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,latin2,cp1250
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set pastetoggle=<f7>
colorscheme ir_black

map zp :setlocal spell spelllang=pl <CR>
map zP :setlocal nospell <CR>
map ze :setlocal spell spelllang=en_us <CR>
map zE :setlocal nospell <CR>

"For latex suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_ViewRule_pdf = 'open -a PDFView'
"let g:Tex_ViewRule_ps = 'gv'
"let g:Tex_ViewRule_dvi = 'kdvi'
let g:Tex_DefaultTargetFormat = 'pdf'

"let loaded_nerd_comments=1

" single character insert
nmap <Space> i_<Esc>r

"search
nnoremap / /\v
vnoremap / /\v
set incsearch       "incremental search"
set hlsearch        "high light search"
set ignorecase      "ignore case"
set smartcase       "unless there's mixture of case"
set magic           "magic characters in patterns"
set gdefault
nnoremap <leader><space> :noh<cr>

"wrapping and formating
set wrap
set textwidth=120
set formatoptions=qrn1
if exists('+colorcolumn')
    set colorcolumn=120
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif

"matching parentheses"
set showmatch       "cursor jumps back to matching parenthese"
set matchtime=5     "for one milisecond duration"

"insert mode"
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk

"get rid of help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"remove white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

"leader stuff
"Ack
nnoremap <leader>a :Ack
"split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

cab W w
cab Wq wq
cab WQ wq
cab wQ wq
cab Wq! wq!
cab WQ! wq!
cab wQ! wq!
iab nei nie
