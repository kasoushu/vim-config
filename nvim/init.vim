":pyx=3
let mapleader=";"
set number
syntax on
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
"let $LANG = 'en'
"set langmenu= en
set guifont=\:h18
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
"set fileencodings=utf-8,ucs-bom,cp936,big5
"set fileencoding=utf-8
set pyxversion=3
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list 
"set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif







"主题
"color snazzy
colorscheme snazzy
set background=dark
"键绑定

noremap K 5k
noremap J 5j
noremap <c-b> <C-V>
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
noremap <leader><CR> :nohlsearch<cr>
map sr :set splitright<cr>:vsplit<cr>
map sl :set nosplitright<cr>:vsplit<cr>
"设置分屏大小
map a<right> :vertical resize+5<cr>
map a<left> :vertical resize-5<cr>
"map <C><left> :res -5<cr>
"map <C><left> :res -5<cr>
"标签页
map tu :tabe<cr>
map tn :+tabnext<cr>
map ti :-tabnext<cr>

"insert mode
inoremap J <down>
inoremap K <up>
inoremap L <right>
inoremap H <left>
inoremap jk <Esc>

""inoremap ( ()<ESC>i
""inoremap [ []<ESC>i
""inoremap { {}<ESC>i
""inoremap < <><ESC>i
""inoremap ' ''<ESC>i
""inoremap " ""<ESC>i

"插件

call plug#begin('~/.vim/plugged')

" Make sure you use single quotese Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
" Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
"Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
"coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"autosave
Plug '907th/vim-auto-save'
"delimitmate
Plug 'Raimondi/delimitMate'

" Initialize plugin system
call plug#end()

"插件设置

"snazzy设置
"let g:SnazzyTransparent = 1
"autosave setting
let g:auto_save = 1
"nerdtree set
noremap <leader>w  :NERDTreeToggle<cr>

autocmd bufenter  if (winnr(" $" ) == 1 && exists(" b:NERDTree" ) && b:NERDTree.isTabTree()) | q | endif
" 自动启动nerdtree"
autocmd StdinReadPre  let s:std_in=1
autocmd VimEnter  if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe ‘cd'.argv()[0] | endif

 " "修改树的显示图标
let g:NERDTreeDirArrowExpandable = ' ►' 
let g:NERDTreeDirArrowCollapsible = ' ▼' 
let NERDTreeAutoCenter=1
 " " 显示行号
let NERDTreeShowlineNumbers=1
 "  是否显示隐藏文件
let NERDTreeShoidden=1
 "  设置宽度
let NERDTreeWinSize=25
 "  在终端启动vim时，共享NERDTree
"let g:nerdtree_tabs_open_on_console_startup=1""w"''''"")"")""))"">
