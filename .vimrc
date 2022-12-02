filetype on
syntax on
set number
set colorcolumn=79
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber " cursor = 0
set nu " show current line number
set hidden " keep buffers open
set nowrap
set incsearch
set scrolloff=8

colorscheme rose-pine-{dark,light}

" nmaps
nmap Y "*yy

" xnoremap (visual mode remap)
xnoremap Y "*y

" inoremaps

inoremap <Tab><Tab> <Esc>A
inoremap {{ <Esc>$a<Space>{<Enter>

inoremap ;j <Esc>$a;<Enter>
inoremap ;<Enter> <Esc>$a;<Enter>
inoremap ;l <Esc>A;
inoremap ;; <C-o>A;<Esc>
inoremap ;, <C-o>A;<Enter>

inoremap ,l <Esc>A,<Space>
inoremap ,, <Esc>A,<Enter>
inoremap ,; <Esc>A,<Esc>

inoremap :: <C-o>A:<Enter>
inoremap :; <C-o>A:<Esc>
inoremap :l <C-o>A:<Space>

inoremap ø <C-o>A<Space>
"   Ú -> shift + alt + 0
inoremap Ú <C-o>A<Space>=<Space>
inoremap ÚÚ <C-o>A<Space>==<Space>

"   faster escape
inoremap kj <C-C>
inoremap jk <C-C>

if has("autocmd")
  filetype on
  autocmd FileType zsh setlocal ts=2 sts=2 sw=2 et
endif

" Tim Pope's unimpaired.vim
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

