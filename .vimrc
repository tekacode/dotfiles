set number
set relativenumber
set showcmd
set colorcolumn=80
set tabstop=2
set autoindent
set showcmd
set spelllang=en_us
set spell

set showmatch " shows maching curly brace

"sets indent lavel for indentline plugin
set ts=1 sw=1 et
let g:indentLine_char = '┆'

" Disable swap file creation 
set noswapfile

syntax on

" Saves code-folds in .vim/view folder and load when needed
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview


" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Buffer manuplate
map bn :bn<cr>
map bp :bp<cr>

"This autocomplete in insert mode, ctrl + v before will escape the mapping
" inoremap  "<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

cnoremap bb Rex <CR>
cnoremap eee Explore <CR>
cnoremap ee :EditVifm <CR>

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


"Make j and k move to the next row, not file line
"nnoremap j gj
"nnoremap k gk


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

" Switch between tabs
nnoremap <Leader>y br1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_


"allows vim to jump btween tags when you use % 
runtime macros/matchit.vim

" to install the following plugins in vim type PlugInstall, PlugUpdate


" -------PLUGINS-------


call plug#begin('~/.vim/plugged')

Plug 'pearofducks/ansible-vim'
Plug 'junegunn/vim-easy-align'

Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'magarcia/vim-angular2-snippets'
Plug 'leafgarland/typescript-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'chriskempson/base16-vim'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'yggdroot/indentline'
Plug 'sickill/vim-monokai'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mhartington/oceanic-next'
" Plug 'valloric/youcompleteme'
Plug 'udalov/kotlin-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'prurigro/replacewithregister'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vifm/vifm.vim'
Plug 'chriskempson/base16-vim'
Plug 'vimwiki/vimwiki'
Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'justinmk/vim-sneak'

call plug#end()

" ----VIM COLOR THEMS---

"colorscheme molokai 
" colorscheme dracula

colorscheme onedark

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

let g:netrw_banner = 0 "removes directory banner from netrw

" to delete directory with file
:let g:netrw_localrmdir='rm -r'



" set sneak
" let g:sneak#label = 1

" let mapleader ='t'
" nmap s tf
  

" f to search 1 {char}
" f2 to search 2 {char}{char}
" nmap s <Plug>(easymotion-overwin-f)

" <Leader>f{char to move to {char}
map  <Leader>f <Plug>(asymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)


" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" To invoke CtrlP do this mapping 
let g:ctrlp_map = '<c-p>'
let g:dtrlp_map = 'Ctrlp'
" Specify working directory at start
let g:ctrlp_working_path_mod= 'a'

" Allow hidden files be searched 
" let g:ctrlp_show_hidden = 1
  
