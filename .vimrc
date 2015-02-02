
"automatically source .vimrc on save
autocmd! bufwritepost .vimrc source %

" Unmap the arrow keys
" no <down> ddp 'This will shift the current line down one position'
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
" no <up> ddkP 'This will shift the current line up onw position'
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Mapping Ctrl-s and Ctrl-Shift-S to Save and Save All
inoremap <C-s> <ESC>:w<CR>a
nnoremap <C-s> :w<CR>"

syntax on

set autoindent
set cindent

execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

set expandtab
set tabstop=4
set shiftwidth=4

autocmd VimEnter * NERDTree . 
let g:NERDTreeWinSize = 33 

" associate *.foo with php filetype
au BufRead,BufNewFile *.ros setfiletype php

set noswapfile

set number

set laststatus=2

" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'



" setting colorscheme to molokai
colorscheme molokai
set cursorline

let &colorcolumn=join(range(121,999),",")
" let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27


" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" NERD Tree Plugin Settings
" Toggle the NERD Tree on an off with F7
nmap <F1> :NERDTreeToggle<CR>
"nmap <leader>n :NERDTreeToggle<CR>
"nmap <leader>tt :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F7
" "nmap <S-F7> :NERDTreeClose<CR>

" Have NERD Tree always open on the right side
let g:NERDTreeWinPos = "left"

"buffergator settings
"autocmd VimEnter * BuffergatorToggle
" do not use default keymaps (1=yes 0=no)
" let g:buffergator_suppress_keymaps = 1
" set custom keymaps
nnoremap <F2> :BuffergatorToggle<CR>
" auto dismiss buffergator window after opening buffer (1=yes 0=no)
let g:buffergator_autodismiss_on_select = 1 
" auto expand vim window when opening buffergator (1=yes 0=no)
let g:buffergator_autoexpand_on_split = 0 
" buffergator window width (default=40)
let g:buffergator_split_size = 20
"let g:buffergator_autoupdate = 1
let g:buffergator_viewport_split_policy = "B"
"    Default: "R"
"    Determines how a new Buffergator window will be opened. Can be one of the
"    following values:
"        "L"   : vertical left (full screen height)
"        "R"   : vertical right (full screen height)
"        "T"   : horizontal top (full screen width)
"        "B"   : horizontal bottom (full screen width)

" a dark background is a must (let's make the text play nice with it)
set bg=dark

" ~ files are evil; set this to not leave any behind
"set nobackup
"set backupdir=~/tmp

"set dir=~/tmp


