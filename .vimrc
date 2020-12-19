syntax on
"カーソル位置を右下に表示
set ruler
"入力中のコマンドを表示
set showcmd
"行番号を表示
set number 
" インデント幅
set shiftwidth=4
"検索語をハイライト
set hlsearch
"モード名を非表示
set noshowmode
" jjをESCキーに対応
inoremap <silent> jj <ESC>
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

autocmd ColorScheme * highlight lineNr ctermfg=15
autocmd ColorScheme * highlight Visual ctermbg=23
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif

syntax enable
colorscheme iceberg
