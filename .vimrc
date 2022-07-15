set number
set relativenumber
set showcmd
set colorcolumn=80
set tabstop=2
set autoindent
set showcmd
set spelllang=en_us
set spell

syntax on

set showmatch " shows maching curly brace

cnoremap ic :q! <CR> "ignore change
cnoremap : CtrlPMRU<CR>
cnoremap w :w! <CR><esc>
cnoremap q :q <CR>

" search and replace
cnoremap sr %s/

" reload vimrc
cnoremap rv source ~/.vimrc <CR>


"run,compile files from vim
cnoremap js :! node % <CR>
cnoremap ct :! tsc % <CR>
cnoremap rw :! swift % <CR>
cnoremap rs :! sudo mysql -u root -p jpa_hibernate < sql.sql <CR>

cnoremap cj :! javac % <CR>
cnoremap rj ! java 
cnoremap cja :! javac *.java <CR>

cnoremap rp :! python3 % <CR>
cnoremap rd :! dart % <CR>

" Run go file
cnoremap rg :! go run % <CR>
" Run R file
cnoremap rr :! Rscript % <CR>

"compile c
cnoremap cc :! gcc -o c_my % <CR>
" Run c
cnoremap rc :!./c_my <CR>

"compile cpp
cnoremap ccpp :! g++ -o cpp_my % <CR>
" run cpp
cnoremap rcpp:! ./cpp_my <CR>

" Compile Kotlin
cnoremap ck :! kotlinc kt.kt -include-runtime -d kt.jar <CR>

" Run PHP
cnoremap rh :! php % <CR>

" Run bash
cnoremap rb :! bash % <CR>

" Run Kotlin
cnoremap rk :! java -jar kt.jar <CR>

" Maps escap key
imap jk <Esc>

" Quickly insert an empty new line without entering insert mode
nnoremap kj o<Esc>

" Select all text
nnoremap vA ggVG

" Quick Save
nnoremap <S-s> :w<CR>

map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l


" -------PLUGINS-------

call plug#begin('~/.config/nvim/autoload/plug.vim')

"Plug 'pearofducks/ansible-vim'
"Plug 'junegunn/vim-easy-align'

"Plug 'vim-syntastic/syntastic'
"Plug 'pangloss/vim-javascript'
"Plug 'magarcia/vim-angular2-snippets'
"Plug 'leafgarland/typescript-vim'
"Plug 'nanotech/jellybeans.vim'
"Plug 'chriskempson/base16-vim'
Plug 'easymotion/vim-easymotion'
"Plug 'kien/ctrlp.vim'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-commentary'
"Plug 'yggdroot/indentline'
"Plug 'sickill/vim-monokai'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'mhartington/oceanic-next'
" Plug 'valloric/youcompleteme'
"Plug 'udalov/kotlin-vim'
"Plug 'mattn/emmet-vim'
"Plug 'tpope/vim-fugitive'
"Plug 'prurigro/replacewithregister'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'vifm/vifm.vim'
"Plug 'chriskempson/base16-vim'
"Plug 'vimwiki/vimwiki'
"Plug 'joshdick/onedark.vim'
"Plug 'flazz/vim-colorschemes'
"Plug 'justinmk/vim-sneak'

call plug#end()

" ----VIM COLOR THEMS---

"colorscheme molokai 
" colorscheme dracula

"colorscheme onedark

"colorscheme jellybeans 
"colorscheme gruvbox
"colorscheme ayu
"colorscheme desert
"colorscheme palenight
"colorscheme OceanicNext
"colorscheme morning
"colorscheme ir_black
"colorscheme base16-default-darko
"let base16colorspace=256
