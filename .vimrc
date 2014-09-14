" 挙動を vi 互換ではなく、Vim のデフォルト設定にする
set nocompatible

" 一旦ファイルタイプ関連を無効化する
filetype off

"-------------------------------------------------------------------------------
" NeoBundle
"-------------------------------------------------------------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'tpope/vim-commentary'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'kana/vim-textobj-function'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'nathanaelkane/vim-indent-guides'

" colorscheme
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" from https://github.com/yuroyoro/dotfiles
"-------------------------------------------------------------------------------
" 基本設定 Basics
"-------------------------------------------------------------------------------
" let mapleader = "," " キーマップリーダー
set scrolloff=2 " スクロール時の余白確保
set textwidth=0 " 一行に長い文章を書いていても自動折り返しをしない
set nobackup " バックアップ取らない
" set autoread " 他で書き換えられたら自動で読み直す
set noswapfile " スワップファイル作らない
set hidden " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start " バックスペースでなんでも消せるように
set formatoptions=lmoq " テキスト整形オプション，マルチバイト系を追加
set vb t_vb= " ビープをならさない
set browsedir=buffer " Exploreの初期ディレクトリ
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set showcmd " コマンドをステータス行に表示
set showmode " 現在のモードを表示
set viminfo='50,<1000,s100,\"50 " viminfoファイルの設定
set modelines=0 " モードラインは無効
set notitle " vimを使ってくれてありがとう
" OSのクリップボードを使用する
set clipboard+=unnamed
" ターミナルでマウスを使用できるようにする
set mouse=a
set guioptions+=a
set ttymouse=xterm2


"-------------------------------------------------------------------------------
" ステータスライン StatusLine
"-------------------------------------------------------------------------------
set laststatus=2 " 常にステータスラインを表示
"カーソルが何行目の何列目に置かれているかを表示する
set ruler

"ステータスラインに文字コードと改行文字を表示する
" if winwidth(0) >= 120
" set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %{g:HahHah()}\ %F%=[%{GetB()}]\ %{fugitive#statusline()}\ %l,%c%V%8P
" else
" set statusline=%<[%n]%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %{g:HahHah()}\ %f%=[%{GetB()}]\ %{fugitive#statusline()}\ %l,%c%V%8P
" endif


"-------------------------------------------------------------------------------
" インデント Indent
"-------------------------------------------------------------------------------
set autoindent " 自動でインデント
"set paste " ペースト時にautoindentを無効に(onにするとautocomplpop.vimが動かない)
set smartindent " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set cindent " Cプログラムファイルの自動インデントを始める


"-------------------------------------------------------------------------------
" 表示 Apperance
"-------------------------------------------------------------------------------
set showmatch " 括弧の対応をハイライト
set number " 行番号表示
set list " 不可視文字表示
set listchars=tab:>.,trail:_,extends:>,precedes:< " 不可視文字の表示形式
set display=uhex " 印字不可能文字を16進数で表示
" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
" カーソル行をハイライト
set cursorline


"-------------------------------------------------------------------------------
" 補完・履歴 Complete
"-------------------------------------------------------------------------------
set wildmenu " コマンド補完を強化
" set wildchar=<tab> " コマンド補完を開始するキー
set wildmode=list,full " リスト表示
set history=1000 " コマンド・検索パターンの履歴数
" set complete+=k " 補完に辞書ファイル追加

" Ex-modeでの<C-p><C-n>をzshのヒストリ補完っぽくする
" cnoremap <C-p> <Up>
" cnoremap <Up> <C-p>
" cnoremap <C-n> <Down>
" cnoremap <Down> <C-n>


"-------------------------------------------------------------------------------
" 検索設定 Search
"-------------------------------------------------------------------------------
set wrapscan " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch " インクリメンタルサーチ
set hlsearch " 検索文字をハイライト
"Escの2回押しでハイライト消去
nmap <ESC><ESC> ;nohlsearch<CR><ESC>


"-------------------------------------------------------------------------------
" 編集関連 Edit
"-------------------------------------------------------------------------------
" Tabキーを空白に変換
set expandtab
set shiftwidth=2
set softtabstop=2

"-------------------------------------------------------------------------------
" エンコーディング関連 Encoding
"-------------------------------------------------------------------------------
set ffs=unix,dos,mac " 改行文字
set encoding=utf-8 " デフォルトエンコーディング

"-------------------------------------------------------------------------------
" matchit
"-------------------------------------------------------------------------------
filetype plugin on
runtime macros/matchit.vim

" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype on

