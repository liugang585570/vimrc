set nocompatible
filetype off

"============================================
"Vundle for plugin settings
"============================================
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"add all your plugins here

"--------------------------------------------
"Plugin for 代码折叠
Plugin 'tmhedberg/SimpylFold'
"看到折叠代码的文档字符串
let g:SimplyFold_docstring_preview=1

"--------------------------------------------
"Plugin for 自动缩进
Plugin 'vim-scripts/indentpython.vim'

"--------------------------------------------
"Plugin for 自动补全
Bundle 'Valloric/YouCompleteMe'
"YouCompleteMe插件配置
let g:ycm_autoclose_preview_window_after_completion=1  " 完成操作后自动补全窗口不会自动消失
map <leader>g:YcmCompleter GoToDefinitionElseDeclaration<CR>

"--------------------------------------------
"Plugin for 语法检查
Plugin 'scrooloose/syntastic'

"--------------------------------------------
"Plugin for PEP8代码风格检查
Plugin 'nvie/vim-flake8'

"Plugin for 配色方案
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"--------------------------------------------
"NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
"NERDTree 隐藏显示.pyc文件
let NERDTreeIgnore=['\.pyc$', '\.pyo$']

"--------------------------------------------
"Plugin for 超级搜索
Plugin 'kien/ctrlp.vim'

"--------------------------------------------
"Plugin for Git
"Plugin 'tpop/vim-fugitive'

"--------------------------------------------
"Plugin for Powerline
 Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"--------------------------------------------
"Plugin for tagbar
Bundle 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>    "快捷键设置
let g:tagbar_ctags_bin='ctags'        "ctags程序的路径
let g:tagbar_width=30                 "窗口宽度的设置
let g:tagbar_autofocus=1              "auto focus on tagbar open
map <F4> :TagbarToggle<CR>

"--------------------------------------------
"Plugin for MiniBufExplorer
Bundle 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne = 0

map <F11> :MBEbp<CR>
map <F12> :MBEbn<CR>

"All of your plugins must be added before the following line
call vundle#end()           " require
filetype plugin indent on   " require

"===================================================="
"common setting
"===================================================="
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79

"标识不必要的空白字符
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"使用UTF-8编码
set encoding=utf-8

"指定屏幕上可以进行分割的区域
set splitbelow
set splitright



"高亮代码
let python_highlight_all=1
syntax on

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

"显示行号
set nu

"搜索设置
set hlsearch      "高亮
set showmatch     "高亮显示匹配的括号
set matchtime=10  "匹配括号高亮的时间（单位是十分之一秒）
set incsearch     "在搜索时，输入的此举逐字符高亮

"高亮光标所在行列
"set cursorcolumn
"set cursorline
"or
"set cuc
"set cul
"highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
"highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
