set nocompatible                " 关闭兼容模式 YCM 需求
filetype off                    " 关闭文件类型侦测 YCM需求
filetype plugin indent on       " 启用自动补全 YCM需求

set background=dark             " Setting dark mode
"colorscheme gruvbox
"let g:gruvbox_italic=1         " gruvbox 前置配置
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded guibg=#0A0A0A guifg=#9090D0

set nu                          " 显示行号
set rnu                         " 设置相对行号
set showtabline=0               " 隐藏顶部标签栏
set guioptions-=r               " 隐藏右侧滚动条
set guioptions-=L               " 隐藏左侧滚动条
set guioptions-=b               " 隐藏底部滚动条
set cursorline                  " 突出显示当前行
set cursorcolumn                " 突出显示当前列
set langmenu=zh_CN.UTF-8        " 显示中文菜单
set helplang=cn                 " 帮助文档中文显示
"set transparency=10            " 设置窗口透明度

syntax enable                   " 开启文件类型检测
syntax on
set encoding=utf-8              " 编码格式为UTF-8
set nowrap                      " 设置代码不折行
set cursorline                  " 突出显示当前行
set cursorcolumn                " 突出显示当前列
set showmatch                   " 显示括号匹配
set tabstop=4                   " 设置Tab长度为4空格
set shiftwidth=4                " 设置自动缩进长度为4空格
set softtabstop=4               " 设置退格键的退回缩进长度
set backspace+=indent,eol,start    " set backspace可以对其重置
set autoindent                  " 继承前一行的缩进方式，适用于多行注释
set scrolloff=5                 " 距离顶部和底部5行
set laststatus=2                " 命令行为两行
let mapleader=";"               " 定义快捷键的前缀，即<Leader>
set mouse=a                     " 启用鼠标
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set list listchars=tab:»·,trail:·

set ignorecase                  " 搜索时大小写不敏感
set incsearch                   " 开启实时搜索
set hlsearch                    " 高亮搜索项
"set noexpandtab                 " 不允许扩展table
set expandtab                    " 允许扩展table为空格
set whichwrap+=<,>,h,l
set autoread
" 退出插入模式指定类型的文件自动保存
"autocmd InsertLeave *.go,*.rs,*.sh,*.php,*.py,*.js,*.html,*.md write
autocmd FileType yaml,yml setlocal sw=2 ts=2 et ai

" =============== 系统剪切板复制粘贴 ===============
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p


" =============== 屏幕切割 ===============
" 指定屏幕上可以进行分割布局的区域
set splitbelow               " 允许在下部分割布局
set splitright               " 允许在右侧分隔布局
" 组合快捷键：
nnoremap <C-J> <C-W><C-J>    " 组合快捷键：- Ctrl-j 切换到下方的分割窗口
nnoremap <C-H> <C-W><C-H>    " 组合快捷键：- Ctrl-h 切换到左侧的分割窗口



" =============== Plug 配置 ===============
call plug#begin('~/.vim/plugged')

" 插件列表
" Vim 编辑器中的 Git 包装器插件，它可以让我们在 Vim 编辑器中完成 Git 操作
Plug 'tpope/vim-fugitive'
" 用来提供一个导航目录的侧边栏
"Plug 'ryanoasis/vim-devicons'
" 可以使 NERDTree 的 tab 更加友好些
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
" 可以在文件目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'
" 可以在文档中显示 Git 信息
Plug 'airblade/vim-gitgutter'
" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
"Plug 'preservim/tagbar'
Plug 'majutsushi/tagbar'
" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'
" Vim 状态栏插件，包括显示行号，列号，文件类型，文件名，以及 Git 状态
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 有道词典在线翻译
Plug 'ianva/vim-youdao-translater'
" 代码自动完成，安装完插件还需要额外配置才可以使用
"Plug 'ycm-core/YouCompleteMe'
" 代码缩进提示
Plug 'Yggdroot/indentLine'
" 代码折叠
Plug 'tmhedberg/SimpylFold'
" 下面两个插件要配合使用，可以自动生成代码块
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
" Markdown 插件，预览数学插件
Plug 'iamcco/mathjax-support-for-mkdp'
" 在浏览器预览 Markdown 文档
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }
" 高亮显示多余空格并一键去除
Plug 'bronson/vim-trailing-whitespace'
" 状态栏插件，需要安装 powerline 字体
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
" 快速注释插件
" let g:NERDSpaceDelims=1 " 注释的时候自动加个空格
Plug 'preservim/nerdcommenter'
" Ctrl + p，实现模糊匹配快速打开文件等功能
" Plug 'kien/ctrlp.vim'
" 这个插件其实是上边 ctrlp 插件的一个补充，它主要是提升了文件查找的速度
" Plug 'FelikZ/ctrlp-py-matcher'
" LeaderF 无论是从性能还是匹配精度上，都远远超越 ctrlp，
" 快速打开或定位某个 buffer、最近使用的文件（mru）、tags（包括函数、类、变量等）、
" 命令历史、文件中的某一行、Vim 的 help、marks 等
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Themes
"Plug 'tomasr/molokai'

Plug 'flazz/vim-colorschemes'

" Go 相关
" go 主要插件
" Plug 'fatih/vim-go', { 'tag': '*' }
" go 中的代码追踪，输入 gd 就可以自动跳转
" Plug 'dgryski/vim-godef'

" Python 相关
Plug 'vim-scripts/indentpython.vim'
Plug 'tell-k/vim-autopep8'

" All of your Plugins must be added before the following line
call plug#end()            " required


" =============== NERDTree 配置 ===============
" 使用F5键快速调出和隐藏它
nmap <F5> :NERDTreeToggle<CR>

let NERDTreeChDirMode=2
" 显示书签"
let NERDTreeShowBookmarks=1
" 设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" 窗口大小"
let NERDTreeWinSize=25
" 修改默认箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 打开vim时自动打开NERDTree
" autocmd vimenter * NERDTree
" How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=0


" =============== vim-devicons 配置 ===============
"set encoding=UTF-8 " 已设置
"Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1
"whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
"adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" 解决 GUI 乱码问题
" 下载地址：https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
set guifont=DroidSansMono_Nerd_Font:h11


" =============== vim-nerdtree-tabs 配置 ===============
map <Leader>n <plug>NERDTreeTabsToggle<CR>


" =============== nerdtree-git-plugin 配置 ===============
" 开发的过程中，我们希望git信息直接在NERDTree中显示出来，
" 和Eclipse一样，修改的文件和增加的文件都给出相应的标注，
" 这时需要安装的插件就是 nerdtree-git-plugin,配置信息如下
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" =============== tagbar 配置 ===============
let g:Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8_2/bin/ctags'
nmap <F9> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


" =============== vim-airline 配置 ===============
" 去这里去选主题
" https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes
let g:airline_theme="luna"

" 这个是安装字体后 必须设置此项
let g:airline_powerline_fonts = 1

" 打开tabline功能,方便查看Buffer和切换，这个功能比较不错
" 我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" 设置切换Buffer快捷键
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" 关闭状态显示空白符号计数,这个对我用处不大
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'

" 在Gvim中我设置了英文用Hermit，中文使用 YaHei Mono
if has('win32')
    set guifont=Hermit:h13
    set guifontwide=Microsoft_YaHei_Mono:h12
endif


" =============== vim-youdao-translater 配置 ===============
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>


" =============== YouCompleteMe 配置 ===============
" 补全菜单的开启与关闭
set completeopt=longest,menu                                " 让 Vim 的补全菜单行为与一般 IDE 一致(参考 VimTip1228)
let g:ycm_min_num_of_chars_for_completion=2                 " 从第 2 个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0                                  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_autoclose_preview_window_after_completion=1       " 智能关闭自动补全窗口
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif    " 离开插入模式后自动关闭预览窗口

" 补全菜单中各项之间进行切换和选取：默认使用tab  s-tab进行上下切换，使用空格选取。可进行自定义设置：
" 解决与 ultisnips 冲突的快捷键
"let g:ycm_key_list_select_completion = ['<C-n>', '<space>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"    " 回车即选中补全菜单中的当前项

" 开启各种补全引擎
let g:ycm_collect_identifiers_from_tags_files=1             " 开启 YCM 基于标签引擎
let g:ycm_auto_trigger = 1                                  " 开启 YCM 基于标识符补全，默认为 1
let g:ycm_seed_identifiers_with_syntax=1                    " 开启 YCM 基于语法关键字补全
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 " 注释和字符串中的文字也会被收入补全

" 重映射快捷键
"上下左右键的行为 会显示其他信息,inoremap由i 插入模式和noremap不重映射组成，只映射一层，不会映射到映射的映射
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>   " force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>                     " open locationlist
"nnoremap <leader>lc :lclose<CR>                    " close locationlist
"inoremap <leader><leader> <C-x><C-o>

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>    " 跳转到定义处
let g:ycm_confirm_extra_conf=0                                         " 关闭加载.ycm_extra_conf.py确认提示


" =============== indentline 配置 ===============
" 支持任意ASCII码，也可以使用特殊字符：¦, ┆, or │ ，但只在utf-8编码下有效
let g:indentLine_char='¦'
" 使indentline生效
let g:indentLine_enabled = 1
map <F3> :IndentLinesToggle<cr>


" =============== SimpylFold 配置 ===============
" 必须手动输入za来折叠（和取消折叠）
set foldmethod=indent                " 根据每行的缩进开启折叠
set foldlevel=99
" 使用空格键会是更好的选择,所以在你的配置文件中加上这一行命令吧：
nnoremap <space> za
" 希望看到折叠代码的文档字符串？
let g:SimpylFold_docstring_preview=1


" =============== ultisnips 配置 ===============
" g:UltiSnipsExpandTrigger               <tab>
" g:UltiSnipsListSnippets                <c-tab>
" g:UltiSnipsJumpForwardTrigger          <c-n>
" g:UltiSnipsJumpBackwardTrigger         <c-p>
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
" let g:UltiSnipsEditSplit="vertical"


" =============== markdown-preview 配置 ===============
autocmd BufRead,BufNewFile *.md set filetype=markdown
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
" 如果设置了该参数, g:mkdp_browserfunc 将被忽略
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
" vim 回调函数, 参数为要打开的 url
"let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开markdown 文件的时候打开一次
let g:mkdp_auto_start = 1
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预览窗口
let g:mkdp_auto_open = 1
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不自动关闭预览窗口
let g:mkdp_auto_close = 1
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时更新预览
let g:mkdp_refresh_slow = 0
" 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown
let g:mkdp_command_for_global = 0
" 设置为 1, 在使用的网络中的其他计算机也能访问预览页面
" 默认只监听本地（127.0.0.1），其他计算机不能访问
"let g:mkdp_open_to_the_world = 0
let g:vim_markdown_frontmatter = 1
"nmap <silent> <F8> <Plug>MarkdownPreview           " 普通模式
"imap <silent> <F8> <Plug>MarkdownPreview           " 插入模式
"nmap <silent> <C-F8> <Plug>StopMarkdownPreview     " 普通模式
"imap <silent> <C-F8> <Plug>StopMarkdownPreview     " 插入模式


" =============== vim-trailing-whitespace 配置 ===============
 map <leader><space> :FixWhitespace<cr>


" =============== NerdCommenter 配置 ===============
let g:NERDSpaceDelims=1         " 注释的时候自动加个空格
nmap <leader>cc                 " 加注释
nmap <leader>cu                 " 解开注释
nmap <leader>ca                 " 切换注释的样式:/*....*/和//..的切换
nmap <leader>c<space>           " 加上/解开注释, 智能判断
nmap <leader>cy                 " 先复制, 再注解，p可以进行黏贴
nmap <leader>cs                 " '性感的'注释


" =============== LeaderF 配置 ===============
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PopupPalette = {
    \  'light': {
    \      'Lf_hl_match': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': 'NONE',
    \                'guibg': '#303136',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': '236'
    \              },
    \      'Lf_hl_cursorline': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': 'NONE',
    \                'guibg': '#303136',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': '236'
    \              },
    \      },
    \  'dark': {
    \      }
    \  }
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" If needs
"set ambiwidth=double
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>
" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>


" =============== Vim-go 配置 ===============
let s:packages = [
      \ "github.com/nsf/gocode",
      \ "github.com/alecthomas/gometalinter",
      \ "golang.org/x/tools/cmd/goimports",
      \ "golang.org/x/tools/cmd/guru",
      \ "golang.org/x/tools/cmd/gorename",
      \ "github.com/golang/lint/golint",
      \ "github.com/rogpeppe/godef",
      \ "github.com/kisielk/errcheck",
      \ "github.com/jstemmer/gotags",
      \ "github.com/klauspost/asmfmt/cmd/asmfmt",
      \ "github.com/fatih/motion",
      \ "github.com/fatih/gomodifytags",
      \ "github.com/zmb3/gogetdoc",
      \ "github.com/josharian/impl",
      \ "github.com/dominikh/go-tools/cmd/keyify",
      \ ]


" =============== vim-godef 配置 ===============
let g:godef_split=3                                                               " 在新标签打开
let g:godef_same_file_in_same_window=1                                            " 函数在同一个文件中时不需要打开新窗口
autocmd FileType go nnoremap <buffer> gd :call GodefUnderCursor()<cr>
autocmd FileType go nnoremap <buffer> <C-]> :call GodefUnderCursor()<cr>          " 使用 C-] 代替 gd 进行跳转


" =============== vim-autopep8 配置 ===============
let g:autopep8_disable_show_diff=1
autocmd FileType python noremap <buffer> <F4> :call Autopep8()<CR>
