"  ___      ___  ___   _____ ______    ________   ________     
" |\  \    /  /||\  \ |\   _ \  _   \ |\   __  \ |\   ____\    
" \ \  \  /  / /\ \  \\ \  \\\__\ \  \\ \  \|\  \\ \  \___|    
"  \ \  \/  / /  \ \  \\ \  \\|__| \  \\ \   _  _\\ \  \       
"   \ \    / /    \ \  \\ \  \    \ \  \\ \  \\  \|\ \  \____  
"    \ \__/ /      \ \__\\ \__\    \ \__\\ \__\\ _\ \ \_______\
"     \|__|/        \|__| \|__|     \|__| \|__|\|__| \|_______|
"--------------------------------------------------------------

" 基本
"
" 显示绝对行号
set number
" 显示相对行号
set relativenumber
" 取消自动换行
set nowrap
" 高亮(自动识别)
syntax enable
" 支持鼠标
set mouse=a
" 与上一行保持一致的缩进
set autoindent
" Tab缩进长度
set tabstop=4
" 正常(normal)模式下缩进长度
set shiftwidth=4
" Tab自动转为空格(防止配置造成的不兼容)
set expandtab
" Tab自动转为多少个空格
set tabstop=4
set shiftwidth=4
set softtabstop=4
" 编码识别顺序
set encoding=utf8
" 默认换行格式
set fileformats=unix
" Backspace到上一行继续删除
set backspace=indent,eol,start
" 永久显示换行符
set list
" 状态栏的显示(0不显示，1多窗口时显示，2显示)
set laststatus=2
" 显示标尺(右下角显示当前光标位置)
set ruler
" 光标遇到括号时，括号的另一半自动高亮
set showmatch
" 命令行模式下，在底部显示当前键入的指令。例如键入dd删除一行时，键入第一个d，底部右侧显示d，完全键入dd时，操作完成，底部显示消失
set showcmd
" 不高亮显示搜索结果
set nohlsearch
" 键入时，自动跳转到第一个匹配结果
set incsearch
" 搜索忽略大小写
set ignorecase
" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full
" 取消备份
set nobackup
" 不使用撤销文件
set noundofile
" 启用真色彩
set termguicolors
" 启用256色
set t_Co=256
" 关闭拼写检查
set nospell
" 设置文件格式
set ff=unix
" 高亮所在列
set cursorcolumn
" 高亮所在行
set cursorline
" 设置中文帮助
set helplang=cn
" 关闭vi兼容
set nocompatible
" 使用系统剪切版 -> Vim
set clipboard=unnamedplus
" Vim -> 系统剪切版
set clipboard=unnamed
" 出错发出视觉提示
set visualbell
" 光标在屏幕边缘留5行
set scrolloff=5
if has("gui_running")
    " Gvim字体
    set guifont=Hack:h11
    " 隐藏左侧垂直滚动条
    set guioptions-=l
    " 隐藏右侧垂直滚动条
    set guioptions-=L
    " 隐藏顶部水平滚动条
    set guioptions-=r
    " 隐藏底部水平滚动条
    set guioptions-=R
    " 隐藏菜单栏
    " set guioptions-=m
    " 隐藏工具栏
    set guioptions-=T
endif
"
"==================================================
" 插件管理
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'itchyny/vim-cursorword'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'tomasr/molokai'
call plug#end()
" 插件和主题的配置
"
"
" 主题
" colorscheme molokai
colorscheme zaibatsu
"
" 插件
"
" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"
" NERDTree配置
" 修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
" 打开vim时如果没有文件自动打开NERDTree
autocmd vimenter * if !argc()|NERDTree|endif
" 当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 右侧打开NERDTree
let g:NERDTreeWinPos = "right"
"
" Coc配置
set updatetime=1000
set shortmess+=c
" <Tab>键自动补全
inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" 用使用 [g 和 ]g 来寻找上、下一个报错
noremap <silent> [g <Plug>(coc-diagnostic-prev)
noremap <silent> ]g <Plug>(coc-diagnostic-next)
" 高亮鼠标所在的同一个词汇
autocmd CursorHold * silent call CocActionAsync('highlight')
" Coc.nvim自动安装插件
let g:coc_global_extensions = [
            \'coc-json',
            \'coc-vimlsp',
            \'coc-eslint',
            \'coc-marketplace',
            \'coc-tsserver',
            \'coc-html',
            \'coc-css',
            \'coc-phpls',
            \'coc-markdownlint']
"
" 按键
" <leader>绑定
let mapleader="\<space>"
" 绑定<F2>键为切换绝对行号开关的快捷键
noremap <F2> :set number!<CR>
" 绑定<F3>键为切换相对行号开关的快捷键
noremap <F3> :set relativenumber!<CR>
" 输入模式下把jk换成<ESC>
inoremap jk <Esc>
" 绑定//为高亮开关
noremap // :set hlsearch!<CR>
" 搜索时自动打开高亮
noremap / :set hlsearch<CR> /
" 绑定md为Markdown预览开关
nnoremap md :MarkdownPreviewToggle<CR>
" 绑定<Ctrl>+A为全选
noremap <C-a> ggVG
" 窗口移动方式映射
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
" 绑定<leader>+w为保存(强制)
noremap <leader>w :w!<CR>
" 绑定<leader>+z为保存并退出(强制)
noremap <leader>z :x!<CR>
" 绑定<leader>+n为NERDTree开关
noremap <leader>n :NERDTreeToggle<CR>
" 绑定<Ctrl>+W为分屏统一高度
noremap <C-=> <C-W>=
