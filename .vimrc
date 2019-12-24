"____    ____  __  .___  ___.         _______. _______ .___________. __    __  .______   
"\   \  /   / |  | |   \/   |        /       ||   ____||           ||  |  |  | |   _  \  
" \   \/   /  |  | |  \  /  |       |   (----`|  |__   `---|  |----`|  |  |  | |  |_)  | 
"  \      /   |  | |  |\/|  |        \   \    |   __|      |  |     |  |  |  | |   ___/  
"   \    /    |  | |  |  |  |    .----)   |   |  |____     |  |     |  `--'  | |  |      
"    \__/     |__| |__|  |__|    |_______/    |_______|    |__|      \______/  | _|      
"                                                                                        

" == Plugins == {
"installs plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
  call plug#begin('~/.vim/plugged')
  Plug 'vimwiki/vimwiki' "Create a repository of all my knowledge 
  Plug 'junegunn/goyo.vim' "Turns off all visual junk for clean writing
  Plug 'scrooloose/nerdtree' "visual directory hiearchy
  Plug 'ap/vim-buftabline'
  Plug 'tpope/vim-fugitive' "Git plugin
  Plug 'yggdroot/indentline' "Gives visual representation of indentation levels
  " == fuzzyfinder for files == {
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
  " }
  "== Syntax Highlight and Intellisense == {
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'othree/html5.vim' "For syntax highlighting on non native html components
    "Plug 'udalov/kotlin-vim' " kotlin detection for vim
    Plug 'fwcd/kotlin-language-server' " kotlin lsp
    Plug 'natebosch/dart_language_server' "language server for dart
    Plug 'MaskRay/ccls' "Language server for c, c++
  " }
  Plug 'mhinz/vim-janah'
  Plug 'phanviet/vim-monokai-pro'
  Plug 'ryanoasis/vim-devicons' "devicons must be loaded last
  call plug#end()
" }


" == Default Vim Settings == "

" == Navigation == {
  inoremap jj <ESC>
  map <C-j> :bp<CR>
  map <C-k> :bn<CR> 
  "Adds a new line at current cursor position without exiting normal mode
  nnoremap <S-n> :exe "normal i".nr2char(10)<CR> 
"}

" == Hide status line =={
    let s:hidden_all = 0
    function! ToggleHiddenAll()
        if s:hidden_all  == 0
            let s:hidden_all = 1
            set noshowmode
            set noruler
            set laststatus=0
            set noshowcmd
            
        else
            let s:hidden_all = 0
            set showmode
            set ruler
            set laststatus=2
            set showcmd
        endif
    endfunction
    nnoremap <S-h> :call ToggleHiddenAll()<CR>
" }

" == Indent Line == {
  let g:indentLine_char_list = ['|', '¦', '┆', '┊']
  let g:indentLine_concealcursor = 'inc'
  let g:indentLine_conceallevel = 2
  set autoindent      " always autoindent
  set smartindent     " smart indentation after a new line (ie, {, }, 
" }

" == UI == {
    syntax on
    set number
    set tabstop=4
    set expandtab
    set sw=4
    set nowrap
    set nocursorline
    set encoding=UTF-8 
    set relativenumber
    set termguicolors
    
    set noshowmode
    set noruler
    set laststatus=0
    set noshowcmd
    set hidden
  " }

" == Plugin Dependent Settings == 

" == Colour Scheme == {
    color janah 
" }


" == VimWiki == {
  set nocompatible
  filetype plugin on
 " let g:vimwiki_list = [{'path': '~/vimwiki/',
 "                     \ 'syntax': 'markdown', 'ext': '.md'}]
" }

" == Linting with coc.nvim == {
  "navigate autocomplete choices
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  "Select auto completion
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-angular' ]
  vmap <leader>f <Plug>(coc-format-selected)
  nmap <leader>f <Plug>(coc-format-selected)
  " }

" == fuzzyfinder setting == {
  map <C-p> :FZF<CR>
" }

" == Popmenu == {
  "Changes the background colour of popmenus
  hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
  hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
"}

" == Nerdtree settings and mappings == {
  map <C-n> :NERDTreeToggle<CR>
  let NERDTreeMinimalUI=1
  let g:NERDTreeQuitOnOpen=1 "NerdTree is kind've annoying if left open.
" }

