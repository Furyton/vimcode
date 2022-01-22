call plug#begin()
Plug 'https://gitee.com/zhengqijun/fzf.vim'
Plug 'https://gitee.com/zhengqijun/emmet-vim'
Plug 'https://gitee.com/mirrors_mhartington/oceanic-next'
Plug 'https://gitee.com/zhengqijun/vim-airline'
Plug 'https://gitee.com/zhengqijun/vim-airline-themes'
Plug 'https://gitee.com/lipenglin/jummidark.vim'
Plug 'https://gitee.com/zhengqijun/coc.nvim', {'branch': 'release'}
Plug 'https://gitee.com/zhengqijun/fzf', { 'do': { -> fzf#install() } }
Plug 'https://gitee.com/mirrors_jremmen/vim-ripgrep'
Plug 'https://gitee.com/zhengqijun/nerdtree'
Plug 'https://gitee.com/mirrors_metakirby5/codi.vim'
Plug 'https://gitee.com/zhengqijun/nerdcommenter'
Plug 'https://gitee.com/zhengqijun/vim-surround'
call plug#end()
colorscheme OceanicNext
filetype plugin indent on

" open nerd tree
nnoremap <Leader>n :NERDTreeToggle<CR>
"nnoremap <Leader>f :NERDTreeFind<CR>

" Alt j and Alt k
" escape alt key, for more information, see https://askubuntu.com/a/982003
nnoremap <Esc>j :m +1<CR>
nnoremap <Esc>k :m -2<CR>
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
" fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
" hide highlight
nnoremap <esc><esc> :noh<return><esc>
" use jk to esc in insert mode
" short cut: you can't type jk that easy...
inoremap jk <esc>
set autoindent
set backspace=indent,eol,start
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
set encoding=UTF-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr
set fileencoding=utf-8
" highlight current line
set cursorline
" highlight search
set hlsearch
" don't compate with vi
set nocompatible
" show number
set number
" show relative number
set relativenumber
set ignorecase
" set mouse
set mouse=a
set ttymouse=xterm2
" allow hidden buffer
set hidden
" set tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" create new window below or right
set splitbelow
set splitright
set nocp
" setting cursor, solid block if in normal mode
" line if in insert mode
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"
runtime macros/matchit.vim
let g:coc_disable_startup_warning = 1
let g:airline_detect_spell=1
let g:airline_detect_spelllang=1
