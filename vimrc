"  ___      ___  ___   _____ ______    ________   ________     
" |\  \    /  /||\  \ |\   _ \  _   \ |\   __  \ |\   ____\    
" \ \  \  /  / /\ \  \\ \  \\\__\ \  \\ \  \|\  \\ \  \___|    
"  \ \  \/  / /  \ \  \\ \  \\|__| \  \\ \   _  _\\ \  \       
"   \ \    / /    \ \  \\ \  \    \ \  \\ \  \\  \|\ \  \____  
"    \ \__/ /      \ \__\\ \__\    \ \__\\ \__\\ _\ \ \_______\
"     \|__|/        \|__| \|__|     \|__| \|__|\|__| \|_______|
"--------------------------------------------------------------
"
"
"==================================================
" 基本
"==================================================
"
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
set tabstop=2
" 正常(normal)模式下缩进长度
set shiftwidth=2
" Tab自动转为空格(防止配置造成的不兼容)
set expandtab
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
" 当文件被改动时自动载入
set autoread
" 关闭错误提示音
set noerrorbells
"==================================================
" Gvim设置
if has("gui_running")
    " Gvim字体
    set guifont=Hack\ Nerd\ Font\ Mono:h11
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
    " 设置 alt 键不映射到菜单栏
    set winaltkeys=no
endif
" Gvim背景透明
if has('win64')
    autocmd GUIEnter * call libcallnr("vimtweak64.dll", "SetAlpha", 215)
elseif has('win32')
    autocmd GUIEnter * call libcallnr("vimtweak32.dll", "SetAlpha", 215)
endif
"
"
"==================================================
" 文件配置
"==================================================
"
"
" JavaScript文件设置
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
" Markdown文件设置
autocmd FileType markdown setlocal tabstop=4 shiftwidth=4 softtabstop=4
" CSS文件设置
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
" HTML文件设置
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
" Python文件设置
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
" Vim文件设置
autocmd FileType vim setlocal tabstop=4 shiftwidth=4 softtabstop=4
"
"
"==================================================
" 插件和主题的配置
"==================================================
"
"
"==================================================
" 插件管理
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'itchyny/vim-cursorword'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'honza/vim-snippets'
Plug 'tomasr/molokai'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-peekaboo'
call plug#end()
"
"==================================================
" 主题
colorscheme molokai
" colorscheme zaibatsu
"
"==================================================
" 插件
"
"==================================================
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'molokai'
"
"==================================================
" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"
"==================================================
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
"==================================================
" Coc配置
set updatetime=100
set shortmess+=c
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use <m-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<m-j>'

" Use <m-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<m-k>'

let g:coc_global_extensions = [
            \'coc-json',
            \'coc-vimlsp',
            \'coc-eslint',
            \'coc-marketplace',
            \'coc-tsserver',
            \'coc-html',
            \'coc-css',
            \'coc-phpls',
            \'coc-pyright',
            \'coc-snippets',
            \'coc-markdownlint']
"
"
"==================================================
" 按键映射
"==================================================
"
"
" <leader>绑定
let mapleader="\<space>"
" 绑定<F2>键为切换绝对行号开关的快捷键
noremap <F2> :set number!<CR>
" 绑定<F3>键为切换相对行号开关的快捷键
noremap <F3> :set relativenumber!<CR>
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
noremap <leader>= <C-W>=
noremap <leader>= <C-W>=
" 绑定<Ctrl>+n为新建
noremap <C-n> :enew<CR>
" 绑定<leader>+f为删除空行，无论是否包含空格或Tab
noremap <leader>f :%s/^\s*$\n//g<CR>
" 绑定双击空格为:(在正常模式下)
nnoremap <space><space> :
" 绑定<Ctrl>+[为<ESC>
noremap <C-[> <Esc>
" 绑定<leader>+d为下一个缓冲区
nnoremap <leader>d :bn<CR>
" 绑定<leader>+p粘贴到下一行
nnoremap <leader>p o<Esc>p
" 绑定<leader>+P粘贴到上一行
nnoremap <leader>P O<Esc>p

