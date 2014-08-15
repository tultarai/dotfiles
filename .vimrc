"-------Search--------
"インクリメンタルサーチを有効にする
set incsearch
" ハイライトサーチを有効にする。文字列検索は /word とか * ね
set hlsearch
" 大文字小文字を区別しない(検索時)
set ignorecase
" ただし大文字を含んでいた場合は大文字小文字を区別する(検索時)
set smartcase
"行末まで検索したら行頭に戻る
set wrapscan

"-------Format--------
"自動インデントを有効化する
set smartindent
set autoindent
" インデントにつかわれる空白の数
set shiftwidth=4
" <Tab>押下時の空白数
set softtabstop=4
" <Tab>押下時に<Tab>ではなく、ホワイトスペースを挿入する
set expandtab
" <Tab>が対応する空白の数
set tabstop=4
"フォーマット揃えをコメント以外有効にする
set formatoptions-=c

"-------Look&Feel-----
"ルーラー,行番号を表示
set ruler
set number

"カーソルラインを表示する
set cursorline

"ステータスラインにコマンドを表示
set showcmd
"ステータスラインを常に表示
set laststatus=2

