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
        
        Plug 'vimwiki/vimwiki' "Create a repository of all my KNAWELedge 
        Plug 'junegunn/goyo.vim' "Turns off all visual junk for clean writing
        Plug 'scrooloose/nerdtree' "visual directory hiearchy
        Plug 'ap/vim-buftabline'
        Plug 'yggdroot/indentline' "Gives visual representation of indentation levels
        Plug 'tpope/vim-commentary' "adds a commenting verb
        Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
        Plug 'machakann/vim-sandwich', "verb for wrapping a phrase in parens or quotes etc.
        Plug 'Jiangmiao/auto-pairs', "Automatically pairs parens
        Plug 'ludovicchabant/vim-gutentags', "creates Ctags for files
        Plug 'majutsushi/tagbar' " Adds a bar to view all ctags
        Plug 'airblade/vim-gitgutter' " Adds git information in the sidebar
        
        "== Syntax Highlight and Intellisense == {
            Plug 'neoclide/coc.nvim', {'branch': 'release'}
            Plug 'leafgarland/typescript-vim'
            Plug 'peitalin/vim-jsx-typescript'
            Plug 'othree/html5.vim' "For syntax highlighting on non native html components
            Plug 'MaskRay/ccls' "Language server for c, c++
            Plug 'justinmk/vim-syntax-extra' "LSP for Flex and sundry
            Plug 'tpope/vim-classpath' "Class path stuff for java
        " }

        Plug 'NLaundry/vim-janah' "colour scheme
        Plug 'ryanoasis/vim-devicons' "devicons must be loaded last
    call plug#end()
" }

" == Default Vim Settings == "
" == General == {
    set nocompatible
" }
" == Navigation == {
    inoremap jj <ESC>
    map <C-j> :bp<CR>
    map <C-k> :bn<CR> 
    nnoremap <S-n> :exe "normal i".nr2char(10)<CR> 
    set clipboard=unnamedplus "use system clipboard 
"}

" == Indent Line == {
    let g:indentLine_char_list = ['|', '¦', '┆', '┊']
    let g:indentLine_concealcursor = 'inc'
    let g:indentLine_conceallevel = 2
    set autoindent      " always autoindent
    set smartindent     " smart indentation after a new line (ie, {, }, 
" }

" == Search == {
    set ignorecase
    set smartcase
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
    set scrolloff=10
" }

" == Hide status line =={
    let s:hidden_all = 0
    function! ToggleHiddenAll()
        if s:hidden_all  == 1
            let s:hidden_all = 0
            set noshowmode
            set noruler
            set laststatus=0
            set noshowcmd
            
        else
            let s:hidden_all = 1
            set showmode
            set ruler
            set laststatus=2
            set showcmd
        endif
    endfunction
    nnoremap <S-h> :call ToggleHiddenAll()<CR>
" }

" == Plugin Dependent Settings == 

" == Colour Scheme == {
    color janah   
" }

" == VimWiki == {
    filetype plugin on
    let wiki_1 = {}
    let wiki_1.path = '~/sideprojects/Clash/wiki'
    let wiki_1.syntax = 'markdown'
    let wiki_1.ext = '.md'

    let g:vimwiki_list = [wiki_1]
    let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
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

" == fuzzyfinder + searching with Clap settings == {
    map <C-p> :FZF<CR>
    map <C-f> :Clap grep<CR>
" }

" == Popmenu == {
    hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
    hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
    hi ClapDefaultPreview          ctermbg=236 guibg=#204a87
" }

" == Nerdtree settings and mappings == {
    map <C-n> :NERDTreeToggle<CR>
    let NERDTreeMinimalUI=1
    let g:NERDTreeQuitOnOpen=1 "NerdTree is kind've annoying if left open.
" }

" == TagBar settings and mappings == {
    nmap <F8> :TagbarToggle<CR>
" }

