set number
set relativenumber
set showcmd
set colorcolumn=80
set tabstop=1

filetype indent on
set autoindent

set showcmd

"set spelllang=en_us
"set spell

syntax on

set showmatch " shows maching curly brace

cnoremap ic :q! <CR> "ignore change
cnoremap : CtrlPMRU<CR>
cnoremap w :w! <CR><esc>
cnoremap q :q <CR>

cnoremap sr %s/ " search and replace

cnoremap rv source ~/.vimrc <CR> "reload vimrc

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

"run,compile files from vim
cnoremap js :! node % <CR>
cnoremap ct :! tsc % <CR>
cnoremap rs :! sudo mysql -u root -p jpa_hibernate < sql.sql <CR>

cnoremap cj :! javac % <CR>
cnoremap rj ! java 
cnoremap cja :! javac *.java <CR>

cnoremap rp :! python3 % <CR>
cnoremap rd :! dart % <CR>

cnoremap rg :! go run % <CR> " Run go file
cnoremap rr :! Rscript % <CR> " Run R file

cnoremap cc :! gcc -o c_my % <CR> "compile c
cnoremap rc :!./c_my <CR> " Run c

cnoremap ccpp :! g++ -o cpp_my % <CR> "compile cpp
cnoremap rcpp:! ./cpp_my <CR> " run cpp

cnoremap ck :! kotlinc kt.kt -include-runtime -d kt.jar <CR> " Compile Kotlin

cnoremap rh :! php % <CR> " Run PHP
cnoremap rb :! bash % <CR> " Run bash
cnoremap rk :! java -jar kt.jar <CR> " Run Kotlin

" imap jk <Esc> " Maps escap key

nnoremap kj o<Esc> " Quickly insert an empty new line without entering insert mode

nnoremap vA ggVG " Select all text

nnoremap <S-s> :w<CR> " Quick Save

map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l

" -------PLUGINS-------
call plug#begin('~/.config/nvim/autoload/plug.vim')

Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'yggdroot/indentline'
Plug 'mattn/emmet-vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'


call plug#end()



set ts=2 sw=2 et
let g:indentLine_char = '┆'

let g:ctrlp_map = '<c-p>' " To invoke CtrlP do this mapping
cnoremap : CtrlPMRU<CR>
let g:ctrlp_map = 'Ctrlp'
let g:ctrlp_working_path_mod= 'a' " Specify working directory at s    tart
let g:ctrlp_show_hidden = 1 " Allow hidden files be searched

map s <leader><leader>s

let g:user_emmet_leader_key=',' "triggers Emmet with two commas  i    nstead of ctr,y and ,


