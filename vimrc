set nocompatible " be iMproved
filetype off " required! /** 从这行开始，vimrc配置 **/
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" better color
Bundle 'tomasr/molokai'
Bundle 'bling/vim-airline'

"my ropo"""""""""""""""""""""""""""""""""""""""
Bundle 'chat1/neocomplete'
Bundle 'chat1/VimRT'
" My Bundles here: /* 插件配置格式 */
" original repos on github （Github网站上非vim-scripts仓库的插件，按下面格式填写）
" vim-scripts repos （vim-scripts仓库里的，按下面格式填写）
Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos （非上面两种情况的，按下面格式填写）
"Bundle 'git://git.wincent.com/command-t.git'

" 在VIM的编辑窗口树状显示文件目录
Bundle 'The-NERD-tree'
" 切换缓冲区
Bundle 'minibufexpl.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set fileencodings=utf-8,gb2312,gbk,gb18030,big5
set fenc=utf-8
set enc=utf-8
"colorscheme molokai "这是更改背景颜色的，我用的接近黑色，看起来舒服
colorscheme mycolo "这是更改背景颜色的，我用的接近黑色，看起来舒服
set guifont=Courier:h12  "这是更改字体和字号的哦
set nu!                      "这是显示行号的命令
filetype indent on           "这是关闭自动缩进的命令，我上网查的都没用，
                             "后来这是在安装目录的doc文件夹里面找啊找，
                             "找到的这个用法，gvim7.2版本的
set nuw=1                    "是显示光标位置的，行号列号和百分比 
set backupdir=. "指定一个其备份的地方
"set backupdir=. "指定一个其备份的地方
set laststatus=2   "使得状态栏和命令行分开
syntax on
set cursorline
set incsearch
" format and user interface
set nocompatible
set backspace=indent,eol,start
set number
set softtabstop=4 tabstop=4 shiftwidth=4
"set mouse=a
"set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]

"airline"""""""""""""""""""""""""""""""""""""""""""""
"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"nnoremap <C-tab> :bn<CR> 
"nnoremap <C-s-tab> :bp<CR>
"minibufexpl"""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0
map <F7> :MBEbp<CR>
map <F8> :MBEbn<CR>

"NERDTree""""""""""""""""""""""""""""""""""""""""
"au VimEnter * NERDTree 
nmap <F2> :NERDTreeToggle<CR> 
let NERDTreeWinPos="left"

"neocomplete""""""""""""""""""""""""""""
au VimEnter * NeoCompleteEnable
