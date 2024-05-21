"===============================
" Basic Vim Configuration
"===============================

set number                " Show line numbers
set relativenumber   " Show relative numbers for all other lines
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

" Quick search all file
nnoremap :: :Files<CR>

" Quick search only in Git folder
nnoremap ::: :GitFiles<CR>

" Let the search file window take the bottom 40% instead of pop-up
let g:fzf_layout= { 'down': '40%' }

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

"===============================
" Command-Line Shortcuts
"===============================

" Quick commands
cnoremap ic :q!<CR>            " Ignore changes
cnoremap w :w!<CR>             " Force save
cnoremap sr %s/                " Quick search and replace
cnoremap rv :source ~/.vimrc<CR> " Reload .vimrc file

" Compile and Run commands for various languages
cnoremap js :!node %<CR>          " Run JavaScript
cnoremap ct :!tsc %<CR>           " Compile TypeScript
cnoremap rs :!sudo mysql -u root -p jpa_hibernate < sql.sql<CR>  " MySQL
cnoremap cj :!javac %<CR>         " Compile Java
cnoremap rj :!java %<CR>          " Run Java
cnoremap rp :!python3 %<CR>       " Run Python
cnoremap rd :!dart %<CR>          " Run Dart
cnoremap rg :!go run %<CR>        " Run Go
cnoremap rr :!Rscript %<CR>       " Run R
cnoremap cc :!gcc -o c_my %<CR>   " Compile C
cnoremap rc :!./c_my<CR>          " Run C
cnoremap ccpp :!g++ -o cpp_my %<CR>  " Compile C++
cnoremap rcpp :!./cpp_my<CR>      " Run C++
cnoremap ck :!kotlinc kt.kt -include-runtime -d kt.jar<CR>  " Compile Kotlin
cnoremap rk :!java -jar kt.jar<CR>  " Run Kotlin
cnoremap rh :!php %<CR>           " Run PHP
cnoremap rb :!bash %<CR>          " Run Bash


