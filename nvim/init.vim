"gui
"snazzy设置
let g:SnazzyTransparent = 1
autocmd VimEnter * let g:SnazzyTransparent=1
":let did_install_default_menus = 1
"clipboard
set clipboard=unnamed
set clipboard+=unnamedplus
":pyx=3
let mapleader=","
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
"fontsize
set guifont=Consolas:h19
":set lines=80 columns=150
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
"set fileencodings=utf-8,ucs-bom,cp936,big5
set fileencoding=utf-8
set pyxversion=3
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
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
colorscheme snazzy
" colorscheme molokai
" colorscheme OceanicNext
" colorscheme molokai
" colorscheme solarized
" colorscheme one
set background=dark

"键绑定

noremap H 5k
noremap J 5j
noremap <c-b> <C-V>
map s <nop>
"sneak setting
"let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S
"
map S :w<CR>
map Q :q<CR>
noremap <leader>C :q!<cr>
map R :source $MYVIMRC<CR>
noremap <leader><CR> :nohlsearch<cr>
map sr :set splitright<cr>:vsplit<cr>
map sl :set nosplitright<cr>:vsplit<cr>
noremap <leader>sor :vsplit 
"tab

"设置分屏大小
map <leader>a<right> :vertical resize+5<cr>
map <leader>a<left> :vertical resize-5<cr>
map <leader>a<up>  :resize +5<cr>
map <leader>a<down> :resize -5<cr>
"标签页
noremap tu :tabnew 
"noremap tn :tabn<cr>
"noremap tp :tabp<cr>
noremap tw :tabc<cr>

"insert mode
nnoremap <leader>h ^
nnoremap <leader>l $
" inoremap jk <Esc>
inoremap <c-n> <left>
inoremap <c-l> <right>
""inoremap ( ()<ESC>i
""inoremap [ []<ESC>i
""inoremap { {}<ESC>i
""inoremap < <><ESC>i
""inoremap ' ''<ESC>i
""inoremap " ""<ESC>i
"terminal
" compile shortcut
nnoremap    <leader><leader>cm    :FloatermNew --autoclose=0 g++ % -o %< && ./%<
nnoremap    <leader><leader>rs    :FloatermNew --autoclose=0 rustc % && ./%<
"
" nnoremap   <silent>   <leader>ww  :FloatermToggle<cr>
" tnoremap   <silent>  <leader>ww   <C-\><C-n>:FloatermToggle<CR>
" nnoremap   <silent> <leader>wp    :FloatermPrev<CR>
" tnoremap   <silent> <leader>wp    <C-\><C-n>:FloatermPrev<CR>
" nnoremap   <silent>   <leader>wn         :FloatermNext<CR>
" tnoremap   <silent>   <leader>fn               <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <leader><leader>ww  :FloatermToggle<cr>
tnoremap   <silent>  <leader><leader>ww   <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent> <leader><leader>wp    :FloatermPrev<CR>
tnoremap   <silent> <leader><leader>wp    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <leader><leader>wn         :FloatermNext<CR>
tnoremap   <silent>   <leader><leader>wn               <C-\><C-n>:FloatermNext<CR>
"raner
nnoremap <silent><leader>on    :Ranger<cr>
let g:ranger_map_keys = 0
noremap  <silent><leader>ot   :RangerNewTab<cr>


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
" Plug 'itchyny/vim-cursorword'

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
Plug 'scrooloose/nerdcommenter' " in <space>dcc to comment a line

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
"snippets
Plug 'honza/vim-snippets'
Plug 'ianding1/leetcode.vim'
" tag hightlight
"Plug 'c0r73x/neotags.nvim'
" Initialize plugin system
"Plug 'roflcopter4/tag-highlight.nvim'
Plug 'octol/vim-cpp-enhanced-highlight'
"easymotion
Plug 'easymotion/vim-easymotion'
Plug 'voldikss/vim-floaterm'
"sneak;
Plug 'justinmk/vim-sneak'
Plug 'lambdalisue/suda.vim'
Plug 'francoiscabrol/ranger.vim'
 Plug 'rbgrouleff/bclose.vim'
call plug#end()

"插件设置

"autosave setting
let g:auto_save = 1
"nerdtree set
noremap <leader><leader>n  :NERDTreeToggle<cr>

autocmd bufenter  if (winnr(" $" ) == 1 && exists(" b:NERDTree" ) && b:NERDTree.isTabTree()) | q | endif
" 自动启动nerdtree"
" autocmd VimEnter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
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
"
"coc set
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c

set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader><leader>V <C-v>
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
          execute 'h '.expand('<cword>')
            else
                  call CocAction('doHover')
                    endif
                  endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      "     " Update signature help on jump placeholder
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)

nmap <leader>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

command! -nargs=0 Format :call CocAction('format')

command! -nargs=? Fold :call     CocAction('fold', <f-args>)

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" nerd commemt set
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentati on
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" delimitmate setting
"let loaded_delimitMate = 1

"leetcode vim plugin setting
let g:leetcode_browser = 'chrome'
let g:leetcode_china = 1
" hightlight
"Highlighting of class scope is disabled by default. To enable set

let g:cpp_class_scope_highlight = 1
"Highlighting of member variables is disabled by default. To enable set

let g:cpp_member_variable_highlight = 1
"Highlighting of class names in declarations is disabled by default. To enable set

let g:cpp_class_decl_highlight = 1
"Highlighting of POSIX functions is disabled by default. To enable set

let g:cpp_posix_standard = 1
"There are two ways to highlight template functions. Either

let g:cpp_experimental_simple_template_highlight = 1
"which works in most cases, but can be a little slow on large files. Alternatively set

let g:cpp_experimental_template_highlight = 1
"which is a faster implementation but has some corner cases where it doesn't work.

"Note: C++ template syntax is notoriously difficult to parse, so don't expect this feature to be perfect.

"Highlighting of library concepts is enabled by

let g:cpp_concepts_highlight = 1
"This will highlight the keywords concept and requires as well as all named requirements (like DefaultConstructible) in the standard library.

"Highlighting of user defined functions can be disabled by

"let g:cpp_no_function_highlight = 1
"
"<Leader>f{char} to move to {char}
map  <Leader><leader>f <Plug>(easymotion-bd-f)
nmap <Leader><leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <leader><leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader><leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><leader>l <Plug>(easymotion-overwin-line)


map  <Leader><leader>w <Plug>(easymotion-bd-w)
nmap <Leader><leader>w <Plug>(easymotion-overwin-w)


