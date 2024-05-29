"===============================
" Basic Vim Configuration
"===============================

set number                " Show line numbers
set relativenumber        " Show relative numbers for all other lines
set showcmd               " Display incomplete commands
set colorcolumn=80        " Highlight the 80th column (recommended line width)
set showmatch             " Highlight matching braces, parentheses, etc.

"===============================
" Indentation and Tabs
"===============================

set tabstop=2             " Set tab stops to 2 spaces
set shiftwidth=2          " Number of spaces for each indentation
set expandtab             " Use spaces instead of tabs

"===============================
" Filetypes and Syntax
"===============================

filetype indent on        " Enable filetype-based indentation
syntax on                 " Enable syntax highlighting

"===============================
" Key Mappings
"===============================

" Exit insert mode with 'jk'
inoremap jk <Esc>

" Quickly insert a new line without entering insert mode
nnoremap kj o<Esc>

" Select all text
nnoremap vA ggVG

" Quick save with Shift+s
nnoremap <S-s> :w<CR>

" Quick search all files using fzf.vim plugin
nnoremap :: :Files<CR>

" Quick search for files only in Git folder(search git)
nnoremap ::: :GitFiles<CR>

" Let the search fzf.vim file window take the bottom 40% instead of pop-up
let g:fzf_layout= { 'down': '40%' }

" Use ripgrep with fzf.vim for searching TEXT in files, (brew install ripgrep, sudo apt-get install ripgrep) 
if executable('rg')
  command! -nargs=* Rg
        \ call fzf#vim#grep(
        \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
        \   fzf#vim#with_preview(), <bang>0)
endif


" Window navigation with Ctrl + direction
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

"===============================
" Plugin Configurations
"===============================
" To install Plug dependency manager, use the following code
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged/')

Plug 'easymotion/vim-easymotion'  " Navigation plugin
Plug 'kien/ctrlp.vim'             " File search plugin
Plug 'tpope/vim-surround'         " Surround text with delimiters
Plug 'tpope/vim-commentary'       " Commenting plugin
Plug 'yggdroot/indentline'        " Display vertical indent lines
Plug 'mattn/emmet-vim'            " HTML/CSS/JS snippets
Plug 'junegunn/vim-easy-align'    " Easy text alignment
Plug 'scrooloose/nerdtree'        " File tree explorer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Installs binary code for file search
Plug 'junegunn/fzf.vim'           " File search
Plug 'jiangmiao/auto-pairs'       " insert pairing tags

call plug#end()

"===============================
" EasyMotion Configuration
"===============================

" Enable EasyMotion key mappings
nmap s <Plug>(easymotion-overwin-f)

" EasyMotion search in visual mode
vmap s <Plug>(easymotion-overwin-f)

"===============================
" Command-Line Shortcuts
"===============================

" Quick commands
cnoremap ic :q!<CR>
cnoremap w :w!<CR>
cnoremap sr %s/         

" Compile and Run commands for various languages
cnoremap rj :!node %<CR>
cnoremap rv :!java %<CR>
cnoremap rp :!python3 %<CR>
cnoremap rd :!dart %<CR>
cnoremap rg :!go run %<CR>
cnoremap rh :!php %<CR>
cnoremap rb :!bash %<CR>
cnoremap ct :!tsc %<CR>
cnoremap cv :!javac %<CR>


