" Fundamentals "{{{
" ---------------------------------------------------------------------

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

syntax enable
set nocompatible
set number
set relativenumber
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set shell=zsh
set backupskip=/tmp/*,/private/tmp/*
set noswapfile nobackup
set clipboard+=unnamedplus

let g:coc_global_extensions = [
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-tsserver',
  \ 'coc-yaml',
  \ 'coc-snippets',
  \ 'coc-deno',
  \ ]

let g:markdown_fenced_languages = ['dart', 'python', 'ruby', 'go', 'typescript']

" dart-vim-plugin configs
let g:dart_html_in_string = v:true
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

" vim-lsc/vim-lsc-dart default mappings
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_enable_autocomplete = v:true
let g:lsc_auto_map = {'defaults': v:true, 'FindReferences': '<silent>lr'}

" the silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" terminal italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}}

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors

  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark

  " Setting nightfly as color scheme
  let g:nightflyCursorColor = 1
  let g:nightflyNormalFloat = 1
  let g:nightflyUnderlineMatchParen = 1
  let g:nightflyWinSeparator = 2
  let g:nightflyItalics = 1
  set fillchars=horiz:━,horizup:┻,horizdown:┳,vert:┃,vertleft:┨,vertright:┣,verthoriz:╋

  runtime ./colors/nightfly.vim
  colorscheme nightfly

endif

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

" vim: set foldmethod=marker foldlevel=0:
