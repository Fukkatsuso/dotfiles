" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" 余計なファイルを作成しない
set nobackup
set noundofile

" 検索
set smartcase " 小文字で検索するとき大文字小文字の区別をしない
set incsearch " インクリメンタル検索：最初の文字を入力した時点で検索が開始
set wrapscan " 検索が最後に到達したら最初に戻る
set hlsearch " 検索結果をハイライト
nmap <Esc><Esc> :nohlsearch<Enter>

" 表示
set listchars=tab:^\ ,trail:~ " 行末スペースを可視化
set showmatch " 対応するカッコを強調表示
set number
set cursorline
set title
set laststatus=2 " ステータス行を表示
set wildmenu " コマンドの候補リストを表示
syntax enable

" 入力
set fenc=utf-8
set clipboard+=unnamed " クリップボードを有効化
set autoindent " 自動インデント
set smartindent " 改行時のインデントをいい感じに調整する

" 編集箇所のカーソルを記憶
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif


""""""""""""""""""""
" plugin: coc.nvim
""""""""""""""""""""
call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" 補完
" Tabで次の候補、Shift+Tabで前の候補に移動
inoremap <silent><expr> <Tab>
  \ coc#pum#visible() ? coc#pum#next(1) :
  \ CheckBackspace() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
" 補完候補をEnterで確定
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)
