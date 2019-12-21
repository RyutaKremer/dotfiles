" set UTF-8
set fenc=utf8

set title
" see line number
set number
" see current line number
set cursorline
highlight CursorLine cterm=NONE ctermfg=white ctermbg=black
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" シンタックスハイライトの有効化
syntax enable

" tab size
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする

inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><CR><BS><Up><Tab>
inoremap ( ()<left>
inoremap (<Enter> ()<Left><CR>
inoremap [ []<left>
inoremap [<Enter> []<Left><CR>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

" mouse
set mouse=a
set ttymouse=xterm2

set scrolloff=3

if has('vim_starting')
    " 挿入モード時に点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[5 q"
    " ノーマルモード時に非点滅の縦棒タイプのカーソル
    let &t_EI .= "\e[6 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif



