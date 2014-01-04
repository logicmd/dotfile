"设置起始位置
"winpos 10 180
"设置窗口大小
"set lines=30 columns=108
"设置编码

set encoding=utf-8
set fileencoding=gb18030
set fileencodings=utf-8,shift-jis,gbk,gb18030,cp936,utf-16,big5,ucs-bom,chinese,lati

"设置语言
set langmenu=zh_CN.UTF-8
set helplang=cn

"设置语法高亮
syntax enable
syntax on

"设置配色方案
set t_Co=256
"colorscheme ron
"colorscheme blue
"colorscheme darkblue
"colorscheme default
"colorscheme delek
"colorscheme wombat
"colorscheme elflord
"colorscheme evening
"colorscheme koehler
"colorscheme morning
"colorscheme murphy
"colorscheme pablo
"colorscheme peachpuff
"colorscheme shine
"colorscheme slate
"colorscheme torte
"colorscheme zellner
colorscheme desert

"设置可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"高亮显示匹配的括号
set showmatch

"去除vi一致性
set nocompatible

"设置行号
set number
set numberwidth=5

"TAB键的宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set textwidth=100

"在行和段开始处使用制表符
set smarttab
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·

"自动缩进
set autoindent
set cindent

"去掉错误输入时的提示声音
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"为C语言提供自动缩进
set smartindent

"为C/C++设置详细的信息缩进
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

"默认情况下不显示不可见字符
set nolist
set undolevels=1000

"记录VIM历史行数
set history=100

"禁止生成临时文件
set nobackup
set noswapfile

"每行内插入两空行
set joinspaces
set gdefault

"搜索忽略大小写
set ignorecase

"搜索逐字符高亮
set hlsearch
set incsearch

"匹配括号高亮时间
set matchtime=2
set infercase
set smartcase

"注释格式化选项
set formatoptions=rq

"设置三种格式支持所有
set fileformats=unix,dos,mac

"行内替换
set gdefault

"在编辑过程中，在右下角显示光标位置状态行
set ruler

"在状态行显示命令行
set showcmd

"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"字符间插入的像素行数目
set linespace=0

"增强模式中的命令行自动完成操作
set wildmenu

"增强模式打开列表
set wildmode=list:longest

"使用backspace正常处理indent,eol,start
set backspace=indent,eol,start

" 允许backspace和光标键跨越行边界
set whichwrap+=b,s,h,l<,>,~,[,]
" ']' Insert and Replace
" '[' Insert and Replace
" '~' Normal
" '>' <Right> Normal and Visual
" '<' <Left> Normal and Visual
" 'l' Normal and Visual (no recommended)
" 'h' Normal and visual (no recommended)
" 's' <Space> Normal and Visual
" 'b' <BS> Normal and Visual

"隐藏buff非关闭它
set hidden

"显示已打开窗口，快速修复缓冲区，而不是打开新文件
set switchbuf=useopen

"通过使用:commands命令，告诉我们文件的哪一行被改变过
set report=0

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"光标移动到无效位置
"set virtualedit=all

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"keep 5 lines at the size
set sidescrolloff=10

"缩短消息，避免按键提示
set shortmess=aOstT

"禁用mode lines (安全措施）
set nomodeline

"自动写入缓冲区
"set autowrite

"设置当文件被外部改变的时候自动读入文件
if exists("&autoread")
set autoread

endif

"保存全局变量
set viminfo+=!

"侦查文件类型
filetype on

"载入文件类型插件
filetype plugin on
set grepprg=grep\-nH\$*

"为特定文件类型载入相关缩进文件
filetype indent on
set nocp

"==========================================
"" bundle 插件管理和配置项
"==========================================
""========================== config for plugins begin ======================================

" 0-bundle the plugins
" "package dependent:  ctags
" "python dependent:  pep8, pyflake
"
"filetype off " required! turn off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"################### 插件管理 ###################"
"
""使用Vundle来管理Vundle
Bundle 'gmarik/vundle'
" vim plugin bundle control, command model
" " :BundleInstall     install
" " :BundleInstall!    update
" " :BundleClean       remove plugin not in list

"################### 补全及快速编辑 ###################"
"
""迄今为止用到的最好的自动VIM自动补全插件
Bundle 'Valloric/YouCompleteMe'
"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"在注释输入中也能补全
"let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0


"################### 导航 ###################"
""目录导航
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
"map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$', '^\.bz2$' ]
let g:netrw_home='~/bak'
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

"################### 显示增强 ###################"
"
""状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"if want to use fancy, need to add font patch -> git clone git://gist.github.com/1630581.git
"~/.fonts/ttf-dejavu-powerline
"let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'

"################# 具体语言语法高亮 ###############
"
"" for python.vim syntax highlight
Bundle 'hdima/python-syntax'
let python_highlight_all = 1

" for golang
" Bundle 'jnwhiteh/vim-golang'
" Bundle 'Blackrush/vim-gocode'
"
" " for markdown
Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1
"
" " for javascript
" Bundle "pangloss/vim-javascript"
" let g:html_indent_inctags = "html,body,head,tbody"
" let g:html_indent_script1 = "inc"
" let g:html_indent_style1 = "inc"
"
" "for jquery
" Bundle 'nono/jquery.vim'
"
" "for jinja2 highlight
" Bundle 'Glench/Vim-Jinja2-Syntax'
"
" "for nginx conf file highlight.   need to confirm it works
" Bundle 'thiderman/nginx-vim-syntax'
