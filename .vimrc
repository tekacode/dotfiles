"===============================
" Basic Vim Configuration
"===============================

set number                " Show line numbers
set relativenumber        " Show relative numbers for all other lines
set showcmd               " Display incomplete commands
set colorcolumn=80        " Highlight the 80th column (recommended line width)
set showmatch             " Highlight matching braces, parentheses, etc.
set hlsearch              " Highlight search results

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




<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <!-- <parent>
        <groupId>com.example</groupId>
        <artifactId>abc</artifactId>
        <version>0.0.1-SNAPSHOT</version>
    </parent> -->
    <parent>                                                                      
      <groupId>org.springframework.boot</groupId>                                 
      <artifactId>spring-boot-starter-parent</artifactId>                         
      <version>3.2.5</version>                                                    
      <relativePath/> <!-- lookup parent from repository -->                      
    </parent>    
    <groupId>com.example</groupId>
    <artifactId>abc-api</artifactId>
    <version>0.0.1-SNAPSHOT</version>
    <!-- <packaging>war</packaging> -->
    <packaging>jar</packaging>
    <name>ABC-API</name>
    <description>REST services for Dissemination Review Tool</description>
    <properties>
        <java.version>23</java.version>
    </properties>
    <dependencies>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-data-jpa</artifactId>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-devtools</artifactId>
            <optional>true</optional>
        </dependency>

        <!-- <dependency> -->
        <!--     <groupId>com.oracle.database.jdbc</groupId> -->
        <!--     <artifactId>ojdbc8</artifactId> -->
        <!--     <version>19.15.0.0.1</version> -->
        <!-- </dependency> -->
        <dependency>
            <groupId>org.postgresql</groupId>
            <artifactId>postgresql</artifactId>
            <version>42.7.1</version>
            <scope>runtime</scope>
        </dependency>
        <dependency>
            <groupId>org.springdoc</groupId>
            <artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
            <version>2.2.0</version>
        </dependency>
        <dependency>
            <groupId>org.springdoc</groupId>
            <artifactId>springdoc-openapi-ui</artifactId>
            <version>1.6.9</version>
        </dependency>
        <dependency>
            <groupId>com.github.jsqlparser</groupId>
            <artifactId>jsqlparser</artifactId>
            <version>4.5</version>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-tomcat</artifactId>
            <scope>provided</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-test</artifactId>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>org.springframework.ldap</groupId>
            <artifactId>spring-ldap-core</artifactId>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-mail</artifactId>
        </dependency>
<!--
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context-support</artifactId>
        </dependency>
        <dependency>
            <groupId>com.sun.mail</groupId>
            <artifactId>jakarta.mail</artifactId>
            <version>2.0.1</version>
        </dependency>
-->

        <!-- <dependency>
            <groupId>com.example</groupId>
            <artifactId>abc-ui</artifactId>
            <version>0.0.1-SNAPSHOT</version>
            <scope>runtime</scope>
        </dependency> -->
        <dependency>
            <groupId>jakarta.xml.bind</groupId>
            <artifactId>jakarta.xml.bind-api</artifactId>
            <version>4.0.0</version>
        </dependency>
        <dependency>
            <groupId>org.glassfish.jaxb</groupId>
            <artifactId>jaxb-runtime</artifactId>
            <version>4.0.3</version>
        </dependency>
        <dependency>
            <groupId>jakarta.jws</groupId>
            <artifactId>jakarta.jws-api</artifactId>
            <version>3.0.0</version>
        </dependency>
        <dependency>
            <groupId>jakarta.xml.ws</groupId>
            <artifactId>jakarta.xml.ws-api</artifactId>
            <version>4.0.0</version>
        </dependency>
    </dependencies>

    <build> 
        <plugins>
            <plugin>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-maven-plugin</artifactId>
                 <configuration>
                    <wait>180000</wait> <maxAttempts>3</maxAttempts> 
                 </configuration>
            </plugin>
            <!-- <plugin>
                <groupId>com.dkanejs</groupId>
                <artifactId>docker-compose-maven-plugin</artifactId>
                <version>1.0.1</version>
                <executions>
                    <execution>
                        <id>start</id>
                        <phase>pre-integration-test</phase>
                        <goals>
                            <goal>up</goal>
                        </goals>
                    </execution>
                    <execution>
                        <id>stop</id>
                        <phase>post-integration-test</phase>
                        <goals>
                            <goal>down</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin> -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.11.0</version>
                <configuration>
                    <release>23</release>
                </configuration>
            </plugin>
            <!-- <plugin>
                <artifactId>maven-resources-plugin</artifactId>
                <executions>
                    <execution>
                        <id>copy-resources</id>
                        <phase>validate</phase>
                        <goals>
                            <goal>copy-resources</goal>
                        </goals>
                        <configuration>
                            <outputDirectory>${project.build.directory}/classes/resources/</outputDirectory>
                            <resources>
                                <resource>
                                    <directory>${project.parent.basedir}/abc-ui/dist/abc-ui/</directory>
                                </resource>
                            </resources>
                        </configuration>
                    </execution>
                </executions>
            </plugin> -->
        </plugins>
    </build>

</project>


