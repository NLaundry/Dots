"____    ____  __  .___  ___.         _______. _______ .___________. __    __  .______   
"\   \  /   / |  | |   \/   |        /       ||   ____||           ||  |  |  | |   _  \  
" \   \/   /  |  | |  \  /  |       |   (----`|  |__   `---|  |----`|  |  |  | |  |_)  | 
"  \      /   |  | |  |\/|  |        \   \    |   __|      |  |     |  |  |  | |   ___/  
"   \    /    |  | |  |  |  |    .----)   |   |  |____     |  |     |  `--'  | |  |      
"    \__/     |__| |__|  |__|    |_______/    |_______|    |__|      \______/  | _|      
"                                                                                        

" == Plugins == {
  call plug#begin('~/.vim/plugged')
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
  Plug 'vimwiki/vimwiki' "Create a repository of all my knowledge 
  Plug 'junegunn/goyo.vim' "Turns off all visual junk for clean writing
  Plug 'scrooloose/nerdtree' "visual directory hiearchy
  Plug 'vim-airline/vim-airline' "airline give you an awesome status bar
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive' "Git plugin
  Plug 'mkitt/tabline.vim' "customization for the buffer/tabline above
  Plug 'yggdroot/indentline' "Gives visual representation of indentation levels
  "Plug 'tpope/vim-surround' "Wraps the selected text in quotations/parens
  Plug 'scrooloose/nerdcommenter' "Commenting by visual selection
  Plug 'jiangmiao/auto-pairs' "creates 2 quotes or parens whenever you type one
  " == fuzzyfinder for files == {
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
  " }
  "== Syntax Highlight and Intellisense == {
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'leafgarland/typescript-vim'
    "Plug 'othree/yajs.vim'
  " }
  Plug 'othree/html5.vim' "For syntax highlighting on non native html components
  Plug 'ryanoasis/vim-devicons' "devicons must be loaded last
  "Plug 'udalov/kotlin-vim' " kotlin detection for vim
  Plug 'fwcd/kotlin-language-server' " kotlin lsp
  Plug 'natebosch/dart_language_server' "language server for dart
  Plug 'MaskRay/ccls' "Language server for c, c++
  call plug#end()
" }

" == UI == {
  syntax on
  set number
  set tabstop=2
  set expandtab
  set sw=2
  set nowrap
  set nocursorline
  set encoding=UTF-8 
  set relativenumber
  
" }

" == Latex Viewer == {
  let g:livepreview_previewer = 'okular'
"}

" == VimWiki == {
  set nocompatible
  filetype plugin on
" }

" == Navigation == {
  inoremap jj <ESC>
  map <C-Left> :tabp<CR>
  map <C-Right> :tabn<CR>
  map <C-j> :bp<CR>
  map <C-k> :bn<CR>
"}

" == Popmenu == {
  "Changes the background colour of popmenus
  hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
  hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
"}

" == Nerdtree settings and mappings == {
  map <C-n> :NERDTreeToggle<CR>
  let NERDTreeMinimalUI=1
" }

" == Airline Settings == {
  let g:airline#extensions#default#layout = [ [ 'a', 'b', 'c' ], [ 'x', 'y', 'z'] ] "setting layout of airline
  let g:airline_powerline_fonts = 1
  set t_Co=256
  let g:airline_theme='alduin'
  let g:airlne_section_z = airline#section#create(['linenr'])
  let g:airline_skip_empty_sections =1 "Do not draw separators for empty sections
  let g:NerdTreeStatusline = '' "hide the nerdtree statusline to avoid clutter
  let g:airline_powerline_fonts =1 "Enable powerline fonts

  " === Tabline integration settings === {
    let g:airline#extensions#tabline#show_tab_nr = 1 "show tab number
    let g:airline#extensions#tabline#tab_nr_type= 2
    "show the file type
    let g:airline#extensions#tabline#show_tab_type = 1
    let g:airline#extensions#tabline#enabled = 1
    "show only the name of the file not the whole dir structure
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline#extensions#tabline#formatter = 'default'
  " }
" }

" == Linting with coc.nvim == {
  "navigate autocomplete choices
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  "Select auto completion
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-prettier', 'coc-angular' ]
" }

" == fuzzyfinder setting == {
  map <C-p> :FZF<CR>
" }

" == Indent Line == {
  let g:indentLine_char_list = ['|', '¦', '┆', '┊']
  let g:indentLine_concealcursor = 'inc'
  let g:indentLine_conceallevel = 2
  set autoindent      " always autoindent
  set smartindent     " smart indentation after a new line (ie, {, }, 
  " }
