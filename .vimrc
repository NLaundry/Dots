"____    ____  __  .___  ___.         _______. _______ .___________. __    __  .______   
"\   \  /   / |  | |   \/   |        /       ||   ____||           ||  |  |  | |   _  \  
" \   \/   /  |  | |  \  /  |       |   (----`|  |__   `---|  |----`|  |  |  | |  |_)  | 
"  \      /   |  | |  |\/|  |        \   \    |   __|      |  |     |  |  |  | |   ___/  
"   \    /    |  | |  |  |  |    .----)   |   |  |____     |  |     |  `--'  | |  |      
"    \__/     |__| |__|  |__|    |_______/    |_______|    |__|      \______/  | _|      
"                                                                                        

" == Plugins == {
"
"installs plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
  call plug#begin('~/.vim/plugged')
  "Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
  Plug 'vimwiki/vimwiki' "Create a repository of all my knowledge 
  Plug 'junegunn/goyo.vim' "Turns off all visual junk for clean writing
  Plug 'scrooloose/nerdtree' "visual directory hiearchy
  Plug 'vim-airline/vim-airline' "airline give you an awesome status bar
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive' "Git plugin
  Plug 'mkitt/tabline.vim' "customization for the buffer/tabline above
  Plug 'yggdroot/indentline' "Gives visual representation of indentation levels
  "Plug 'tpope/vim-surround' "Wraps the selected text in quotations/parens
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
  Plug 'ryanoasis/vim-devicons' "devicons must be loaded last
  Plug 'liuchengxu/vista.vim'
  call plug#end()
" }

" == Colour Scheme == {
  autocmd ColorScheme janah highlight Normal ctermbg=235
  colorscheme janah
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
" }

" == Latex Viewer == {
  let g:livepreview_previewer = 'okular'
"}

" == VimWiki == {
  set nocompatible
  filetype plugin on
 " let g:vimwiki_list = [{'path': '~/vimwiki/',
 "                     \ 'syntax': 'markdown', 'ext': '.md'}]
" }

" == Navigation == {
  inoremap jj <ESC>
  map <C-j> :bp<CR>
  map <C-k> :bn<CR> 
  "Adds a new line at current cursor position without exiting normal mode
  nnoremap <S-n> :exe "normal i".nr2char(10)<CR> 
"}
"

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
  let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-angular' ]
  vmap <leader>f <Plug>(coc-format-selected)
  nmap <leader>f <Plug>(coc-format-selected)
  " }

" == fuzzyfinder setting == {
  map <C-p> :FZF<CR>
" }
" == Vista.vim settings == {
    function! NearestMethodOrFunction() abort
        return get(b:, 'vista_nearest_method_or_function', '')
    endfunction

    set statusline+=%{NearestMethodOrFunction()}

    "By default vista.vim never run if you don't call it explicitly.
    "
    " If you want to show the nearest function in your statusline
    "automatically,
    " you can add the following line to your vimrc 
    autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
" }

" == Indent Line == {
  let g:indentLine_char_list = ['|', '¦', '┆', '┊']
  let g:indentLine_concealcursor = 'inc'
  let g:indentLine_conceallevel = 2
  set autoindent      " always autoindent
  set smartindent     " smart indentation after a new line (ie, {, }, 
  " }
