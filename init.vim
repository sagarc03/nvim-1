

"""""""""" HOUSEKEEPING """"""""""
syntax on
set nowrap
set encoding=utf8
set mouse=a
" escape can blow me
nnoremap <C-c> <Esc>
" Gets rid of highlights after search
nnoremap <silent> <F7> :nohlsearch<CR><F7>
" Line numbers
set number
" Toggle line numbers
nnoremap <F6> :set nonumber!<CR>
nnoremap <F9> :vsplit<CR>
nnoremap <F10> :split<CR>
nnoremap <F12> :only<CR>
"if (has("termguicolors"))
"  set termguicolors
"endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Remap window switch
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Remap terminal switch
tnoremap <C-[> <C-\><C-n>
tnoremap <C-c><Esc> <Esc>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1
" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Up>    :resize -2<CR>
	nnoremap <Down>  :resize +2<CR>
	nnoremap <Left>  :vertical resize -2<CR>
	nnoremap <Right> :vertical resize +2<CR>
endif


"""""""""" END HOUSEKEEPING """"""""""

"""""""""" PLUGINS """"""""""
" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/chris/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Start Screen
  call dein#add('mhinz/vim-startify')
  " Search Index shows how many instances of searched term
  call dein#add('google/vim-searchindex')
  " line indents
  "call dein#add('Yggdroot/indentLine')
  " Gutentags
  call dein#add('ludovicchabant/vim-gutentags')
  " Tagbar
  call dein#add('majutsushi/tagbar')
  " Add or remove your plugins here: TODO
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " Themes
  call dein#add('liuchengxu/space-vim-dark')
  " Auto Pairs
  call dein#add('jiangmiao/auto-pairs')
  " NERDTree
  call dein#add('scrooloose/nerdtree')
  " BufOnly use :BufOnly to unload all or pass it a single buffer
  call dein#add('vim-scripts/BufOnly.vim')
  " For autocomplete
  call dein#add('Shougo/deoplete.nvim')
    " For vim 8+
    if !has('nvim')
      call dein#add('roxma/nvim-yarp')
      call dein#add('roxma/vim-hug-neovim-rpc')
    endif

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"""""""""" END PLUGINS """"""""""

"""""""""" SPACEVIM THEME """"""""""

" Set theme
colorscheme space-vim-dark

" Terminal Transparency
"if $TERM_PROGRAM =~ 'terminator'
"  hi Normal     ctermbg=NONE guibg=NONE
"  hi LineNr     ctermbg=NONE guibg=NONE
"  hi SignColumn ctermbg=NONE guibg=NONE
"endif

" Range:   233 (darkest) ~ 238 (lightest)
" Default: 235
let g:space_vim_dark_background = 233
color space-vim-dark
hi Comment guifg=#5C6370 ctermfg=59
"hi Comment cterm=italic
"set background=dark
"set termguicolors
" Enable highlighting of the current line
set cursorline

"""""""""" END THEME """"""""""

"""""""""" BEGIN CONFIGS """"""""""

" Deoplete
let g:deoplete#enable_at_startup = 1
" Startify
let g:startify_custom_header = [                                                                                                                                                                                 
                \ '                                ',                                                                                                                                            
                \ '            __                  ',                                                                                                                                            
                \ '    __  __ /\_\    ___ ___      ',                                                                                                                                            
                \ '   /\ \/\ \\/\ \ /'' __` __`\   ',                                                                                                                                            
                \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \   ',                                                                                                                                            
                \ '    \ \___/  \ \_\ \_\ \_\ \_\  ',                                                                                                                                            
                \ '     \/__/    \/_/\/_/\/_/\/_/  ',                                                                                                                                            
                \ ]

" Tagbar
nmap <F8> :TagbarToggle<CR>
" NERDTree
nmap <F5> :NERDTreeToggle<CR>

"""""""""" END CONFIGS """"""""""

"TODO figure out cscope