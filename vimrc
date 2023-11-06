"          _____                    _____                    _____                    _____                    _____          
"         /\    \                  /\    \                  /\    \                  /\    \                  /\    \         
"        /::\____\                /::\    \                /::\____\                /::\    \                /::\    \        
"       /:::/    /                \:::\    \              /::::|   |               /::::\    \              /::::\    \       
"      /:::/    /                  \:::\    \            /:::::|   |              /::::::\    \            /::::::\    \      
"     /:::/    /                    \:::\    \          /::::::|   |             /:::/\:::\    \          /:::/\:::\    \     
"    /:::/____/                      \:::\    \        /:::/|::|   |            /:::/__\:::\    \        /:::/  \:::\    \    
"    |::|    |                       /::::\    \      /:::/ |::|   |           /::::\   \:::\    \      /:::/    \:::\    \   
"    |::|    |     _____    ____    /::::::\    \    /:::/  |::|___|______    /::::::\   \:::\    \    /:::/    / \:::\    \  
"    |::|    |    /\    \  /\   \  /:::/\:::\    \  /:::/   |::::::::\    \  /:::/\:::\   \:::\____\  /:::/    /   \:::\    \ 
"    |::|    |   /::\____\/::\   \/:::/  \:::\____\/:::/    |:::::::::\____\/:::/  \:::\   \:::|    |/:::/____/     \:::\____\
"    |::|    |  /:::/    /\:::\  /:::/    \::/    /\::/    / ~~~~~/:::/    /\::/   |::::\  /:::|____|\:::\    \      \::/    /
"    |::|    | /:::/    /  \:::\/:::/    / \/____/  \/____/      /:::/    /  \/____|:::::\/:::/    /  \:::\    \      \/____/ 
"    |::|____|/:::/    /    \::::::/    /                       /:::/    /         |:::::::::/    /    \:::\    \             
"    |:::::::::::/    /      \::::/____/                       /:::/    /          |::|\::::/    /      \:::\    \            
"    \::::::::::/____/        \:::\    \                      /:::/    /           |::| \::/____/        \:::\    \           
"     ~~~~~~~~~~               \:::\    \                    /:::/    /            |::|  ~|               \:::\    \          
"                               \:::\    \                  /:::/    /             |::|   |                \:::\    \         
"                                \:::\____\                /:::/    /              \::|   |                 \:::\____\        
"                                 \::/    /                \::/    /                \:|   |                  \::/    /        
"                                  \/____/                  \/____/                  \|___|                   \/____/         
"-----------------------------------------------------------------------------------------------------------------------------

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
syntax on
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
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" Backspace到上一行继续删除
set backspace=2
" 永久显示换行符
set list
" 状态栏的显示(0不显示，1多窗口时显示，2显示)
set laststatus=2
" 光标遇到括号时，括号的另一半自动高亮
set showmatch
" 命令行模式下，在底部显示当前键入的指令。例如键入dd删除一行时，键入第一个d，底部右侧显示d，完全键入dd时，操作完成，底部显示消失
set showcmd
" 高亮显示搜索结果
set hlsearch
" 键入时，自动跳转到第一个匹配结果
set incsearch
" 搜索忽略大小写
set ignorecase
" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full
"取消备份
set noundofile
set nobackup
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
    set guifont=JetBrains\ Mono:h11
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
"
" 插件管理
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tomasr/molokai'
Plug 'ghifarit53/tokyonight-vim'
Plug 'luochen1990/rainbow'
Plug 'itchyny/vim-cursorword'
Plug 'lifepillar/vim-solarized8'
Plug 'chriskempson/vim-tomorrow-theme'
call plug#end()
" 插件和主题的配置
"
"
" 主题
" 主题设置
" molokai
colorscheme molokai
"
" tokyonight
let g:tokyonight_style = 'night' " 选项: night, storm
let g:tokyonight_enable_italic = 1
" colorscheme tokyonight
"
" solarized8
set background=dark
" colorscheme solarized8
"
" Tomorrow
" Tomorrow
" colorscheme Tomorrow
" Tomorrow-Night
" colorscheme Tomorrow-Night
" Tomorrow-Night-Blue
" colorscheme Tomorrow-Night-Blue
" Tomorrow-Night-Bright
" colorscheme Tomorrow-Night-Bright
" Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night-Eighties

" 插件
"
" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"
" NERDTree配置
" 将F7设置为开关NERDTree的快捷键
map <F7> :NERDTreeToggle<cr>
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
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
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
" 绑定<F2>键为切换绝对行号开关的快捷键
nmap <F2> :set number!<CR>
" 绑定<F3>键为切换相对行号开关的快捷键
nmap <F3> :set relativenumber!<CR>
" 输入模式下把mk换成<ESC>
imap mk <Esc>
" 绑定//为关闭高亮
nmap // :set hlsearch!<CR>
" 格式化全部代码
nmap rt gg=G
