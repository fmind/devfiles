" BUFFER {{{
set hidden
set confirm
set autoread
set autowrite
" }}}
" FOLDER {{{
set foldmethod=marker
set foldlevelstart=99
" }}}
" INDENT {{{
set tabstop=4
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
" }}}
" NUMBER {{{
set number
set relativenumber
" }}}
" OTHERS {{{
set shell=/bin/bash
set clipboard=unnamedplus
" }}}
" POPUPS {{{
set wildmode=list:longest,full
set completeopt=menuone,longest
" }}}
" SEARCH {{{
set gdefault
set hlsearch
set incsearch
set smartcase
set ignorecase
" }}}
" SPELLS {{{
set spell
set spelllang=en
" }}}
" WINDOW {{{
set linebreak
set lazyredraw
set shortmess=I
set scrolloff=10
" }}}
" PLUGIN {{{
let g:loaded_netrw = 1
" let g:loaded_matchparen=1
let g:loaded_netrwPlugin = 1
call plug#begin('~/.local/share/nvim/plugged')
Plug 'benmills/vimux'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'francoiscabrol/ranger.vim'
let g:ranger_map_keys = 0
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
let g:AutoPairsShortcutToggle='<M-a>'
Plug 'julienr/vim-cellmode'
let g:cellmode_tmux_panenumber='1'
let g:cellmode_default_mappings='0'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
let g:sneak#label = 1
let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1
Plug 'michaeljsmith/vim-indent-object'
Plug 'rbgrouleff/bclose.vim' " ranger dependency
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
let g:deoplete#enable_at_startup = 1
Plug 'SirVer/ultisnips'
Plug 'szw/vim-g'
Plug 'tomasr/molokai'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'w0rp/ale'
let g:ale_set_quickfix = 1
let g:ale_sign_column_always = 1
let g:ale_python_pylint_options = '--error-only'
let b:ale_fixers = {'python': ['black', 'isort']}
let b:ale_linters = {'python': ['mypy', 'pylint']}
Plug 'wellle/tmux-complete.vim'
call plug#end()
" }}}
" COLORS {{{
try
    colorscheme molokai
catch
    colorscheme zellner
endtry
" }}}
" REMAPS {{{
nnoremap j gj
nnoremap k gk
nnoremap B g^
nnoremap E g$
nnoremap Y y$
xnoremap < <gv
xnoremap > >gv
nnoremap U <C-r>
nnoremap gl :nohl<cr>
vnoremap <silent> <C-p> :call RunTmuxPythonChunk()<CR>
nnoremap <silent> <C-p> :call RunTmuxPythonCell(1)<CR>
nnoremap <silent> <M-p> :call RunTmuxPythonCell(0)<CR>
nnoremap <silent> <C-M-p> :call RunTmuxPythonAllCellsAbove()<CR>
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" }}}
" LEADERS {{{
noremap <cr> :
let mapleader="\<space>"
noremap <leader>a :Ag<cr>
noremap <leader>b :Buffers<cr>
noremap <leader>c :Colors<cr>
noremap <leader>d :Ranger<cr>
noremap <leader>e :cnext<cr>
noremap <leader>f :Files<cr>
noremap <leader>g :GFiles<cr>
noremap <leader>h :Helptags<cr>
noremap <leader>i :Lines<cr>
noremap <leader>j :bnext<cr>
noremap <leader>k :bprevious<cr>
noremap <leader>l :BLines<cr>
noremap <leader>m :Marks<cr>
noremap <leader>n :BCommits<cr>
noremap <leader>o :call VimuxOpenRunner()<cr>
noremap <leader>p :Commands<cr>
noremap <leader>q :bdelete<cr>:bnext<cr>
noremap <leader>r :Tags<cr>
noremap <leader>s :Google 
noremap <leader>t :BTags<cr>
noremap <leader>u :VimuxRunLastCommand<cr>
noremap <leader>v "vy :call VimuxSlime(@v)<cr>
noremap <leader>w :Windows<cr>
noremap <leader>x :ALEFix<cr> 
noremap <leader>y :VimuxInspectRunner<cr>
noremap <leader>z :Filetypes<cr>
noremap <leader>, :Gw<cr>
noremap <leader>` :Locate 
noremap <leader>? :Maps<cr>
noremap <leader>= :Tabularize 
noremap <leader>\ :History<cr>
noremap <leader>: :History:<cr>
noremap <leader>/ :History/<cr>
noremap <leader>] :ALENextWrap<cr>
noremap <leader>. :edit $MYVIMRC<cr>
noremap <leader>- :UltiSnipsEdit<cr>
noremap <leader>[ :ALEPreviousWrap<cr>
noremap <leader>! :GitGutterToggle<cr>
noremap <leader>' :VimuxPromptCommand<cr>
noremap <leader>; :call VimuxSlime(join(getline(1, '$'), "\n"))<cr>
noremap <leader><cr> :make<cr>
noremap <leader><tab> :b#<cr>
noremap <leader><space> :make
" }}}
" LLEADERS {{{
let localmapleader="\\"
noremap <localleader>pb :!black %<CR>
noremap <localleader>se :set spelllang=en<CR>
noremap <localleader>sf :set spelllang=fr<CR>
noremap <localleader>sa :set spelllang=en,fr<CR>
noremap <localleader>wb :set background=dark<CR>
noremap <localleader>wt :highlight Normal guibg=NONE ctermbg=NONE<CR>
" }}}
" FUNCTIONS {{{
function! VimuxSlime(text)
    call VimuxSendText(a:text)
    if a:text !~ '\n$'
        call VimuxSendKeys("Enter")
    endif
endfunction
" }}}
" FILE-TYPES {{{
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
" }}}
" AUTO-GROUPS {{{
augroup vim
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup end
" }}}
