filetype on
filetype off
filetype plugin on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
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
set relativenumber
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

let g:airline_symbols = {}
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme='term'

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

"map gundo to F5
nnoremap <F4> :GundoToggle<CR>
"map NERDTree to F2
nnoremap <F2> :NERDTreeToggle<CR>

"remove white spaces on save
autocmd BufWritePre * :%s/\s\+$//e
"remove fugitive's buffers when hidden
autocmd BufReadPost fugitive://* set bufhidden=delete
"validate python code with flake8
autocmd BufWritePost *.py call Flake8()
"validate Haskell code
autocmd BufWritePost *.hs GhcModCheckAndLintAsync

"leader stuff
"Ag
nnoremap <leader>a :Ag
"split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
"ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
nnoremap <leader>p :CtrlP<CR>
"JSHint
let JSHintUpdateWriteOnly=1

"ignore certain files
set wildignore+=*/tmp/*,*.so,*.swp,*.class,*.pyc,.git,.svn
"fix slight delay after pressing ESC then O
"http://ksjoberg.com/vim-esckeys.html
set timeout timeoutlen=1000 ttimeoutlen=100

cab W w
cab Wq wq
cab WQ wq
cab wQ wq
cab Wq! wq!
cab WQ! wq!
cab wQ! wq!
