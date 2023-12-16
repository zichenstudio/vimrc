# VIMRC
大约在2023年4月，我开始使用Vim，这个储存库存储了我的配置。

(因为习惯的原因，README文件可能更新不及时，如果你发现有些地方与VIMRC文件不符，可以[Issues](https://github.com/ZiChenStudio/vimrc/issues)或[Pull Requests](https://github.com/ZiChenStudio/vimrc/pulls))

## Fonts

[Hack](https://github.com/source-foundry/Hack)

## Plugs

我使用[vim-plug](https://github.com/junegunn/vim-plug)作为插件管理器。

使用了以下插件

- [The NERDTree](https://github.com/preservim/nerdtree)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [Auto Pairs](https://github.com/jiangmiao/auto-pairs)
- [Rainbow Parentheses Improved](https://github.com/luochen1990/rainbow)
- [vim-cursorword](https://github.com/itchyny/vim-cursorword)
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim)

## ColorScheme

- [Molokai](https://github.com/tomasr/molokai)

我在配置中使用`colorscheme zaibatsu`并把`colorscheme molokai`注释了，你可以自己打开。

## Mappings

- `<F2>`开关绝对行号
- `<F3>`开关相对行号
- `jk`是`<Esc>`
- `//`是高亮开关
- `md`是Markdown预览
- `<Ctrl>+A`是全选
- `<Ctrl>+j/k/h/l`是`<Ctrl>+w+j/k/h/l`
- `<space>`是`<leader>`
- `<leader>+w`是强制保存
- `<leader>+z`是强制保存并退出
- `<leader>+n`作为侧边栏(NERDTree)
- `<leader>+=`是分屏统一高度`<Ctrl>+w =`
- `<Ctrl>+n`是新建`:enew<CR>`
- `<leader>+c`是关闭窗口`<Ctrl>+w c`
