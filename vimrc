set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
 Plugin  'gmarik/Vundle.vim'

"*****************************************************************************
"" General plugins
"*****************************************************************************
 "Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
 Plugin 'bling/vim-airline'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'tpope/vim-sensible'
 Plugin 'tpope/vim-surround'
 Plugin 'scrooloose/nerdtree'
 Plugin 'jistr/vim-nerdtree-tabs'
 Plugin 'kien/ctrlp.vim'
 Plugin 'rking/ag.vim'
 Plugin 'kana/vim-textobj-user'
 " Plugin 'christoomey/vim-tmux-navigator'
 " Plugin 'benmills/vimux'
 " auto-completion for quotes, parens, brackets, etc.
 Plugin 'Raimondi/delimitMate'

 " code-completion engine
 Plugin 'Valloric/YouCompleteMe'
 " YCM gives you popups and splits by default that some people might not
 " like, so these should tidy it up a bit for you.
 set completeopt=longest,menuone
 let g:ycm_add_preview_to_completeopt=1
 let g:ycm_confirm_extra_conf=1

 Plugin 'scrooloose/syntastic'
 Plugin 'tpope/vim-commentary'

 " visualize your Vim undo tree
 Plugin 'sjl/gundo.vim'

 " control and organize your working space in Vim. Including managing buffers,
 " files, tabs, sessions, and finally projects
 Plugin 'szw/vim-ctrlspace'
 "set hidden
 "hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
 "hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
 "hi CtrlSpaceSearch   ctermfg=220  ctermbg=NONE cterm=bold
 "hi CtrlSpaceStatus   ctermfg=230  ctermbg=234  cterm=NONE

 " uses signs to indicate added, modified and removed lines based on data of an
 " underlying version control system
 Plugin 'mhinz/vim-signify'

 " collection of language packs
 Plugin 'sheerun/vim-polyglot'

 " colorschemes
 Plugin 'vim-scripts/CSApprox'

 Plugin 'bronson/vim-trailing-whitespace'
 "Plugin 'Shougo/vimproc.vim', {
 ""     \ 'build' : {
 ""     \     'unix' : 'make -f make_unix.mak',
 ""     \    },
 ""     \ }
 "if v:version > 702
 ""  Plugin 'Shougo/vimshell.vim'
 "endif

"" Vim-Session
"" Plugin 'xolox/vim-misc'
"" Plugin 'xolox/vim-session'

 "" Snippets
 Plugin 'SirVer/ultisnips'
 Plugin 'honza/vim-snippets'

 "" Color
 Plugin 'tomasr/molokai'

 "" Vim-Bootstrap Updater
 Plugin 'sherzberg/vim-bootstrap-updater'

 let g:vim_bootstrap_langs = "javascript,ruby,html"
 let g:vim_bootstrap_editor = "vim"        " nvim or vim"

"*****************************************************************************
"" Javascript
"*****************************************************************************
 Plugin 'jelera/vim-javascript-syntax'
 Plugin 'nathanaelkane/vim-indent-guides'
  " set completeopt-=preview
 " JavaScript code analyzer for deep, cross-editor language support
 Plugin 'marijnh/tern_for_vim'
 set omnifunc=syntaxcomplete#Complete
 " polyglot language support for JS - indentation and syntax support
 Plugin 'pangloss/vim-javascript'
 syntax enable

"*****************************************************************************
"" Web & JS Frameworks
"*****************************************************************************
 Plugin 'othree/html5.vim'
 Plugin 'JulesWang/css.vim'
 Plugin 'amirh/HTML-AutoCloseTag'
 Plugin 'hail2u/vim-css3-syntax'
 Plugin 'glanotte/vim-jasmine'
 " css/less/sass/html color preview
 Plugin 'gorodinskiy/vim-coloresque'
 Plugin 'tpope/vim-haml'
 " expanding abbreviations >> http://emmet.io/
 Plugin 'mattn/emmet-vim'
 "Plugin 'heartsentwined/vim-ember-script'

"*****************************************************************************
"" Rails / Ruby
"*****************************************************************************
 Plugin 'tpope/vim-rails'
 Plugin 'tpope/vim-rake'
 Plugin 'nanotech/jellybeans.vim'
 Plugin 'nelstrom/vim-textobj-rubyblock'
 Plugin 'slim-template/vim-slim'
 " Plugin 'tpope/vim-projectionist'
 Plugin 'thoughtbot/vim-rspec'
 Plugin 'majutsushi/tagbar'
 nmap <F8> :TagbarToggle<CR>

"*****************************************************************************
"" Git
"*****************************************************************************
 Plugin 'tpope/vim-fugitive'

 call vundle#end()


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

set mousemodel=popup
set mouse=a     " Enable mouse usage (all modes)
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

set background=dark
color jellybeans

set ts=4
set textwidth=80
syntax enable
filetype indent on
filetype plugin indent on

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

" vim-airline
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '»'
let g:airline_exclude_preview = 1
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '»'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '«'
let g:airline_linecolumn_prefix = '␤ '
"let g:airline_linecolumn_prefix = '¶ '
let g:airline_branch_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
"let g:airline_paste_symbol = 'Þ'
"let g:airline_paste_symbol = '∥'

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" NERDTree configuration
"let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
"let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 20
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>

" Tmux integration
""  if &term =~ '^screen'
"    " tmux will send xterm-style keys when xterm-keys is on
"    execute "set <xUp>=\e[1;*A"
"    execute "set <xDown>=\e[1;*B"
"    execute "set <xRight>=\e[1;*C"
"    execute "set <xLeft>=\e[1;*D"
""  endif

"" let g:tmux_navigator_no_mappings = 1

"" nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
"" nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
"" nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
"" nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
"" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Close tmux when exiting vim
"autocmd VimLeave * silent !tmux killp -a

" Autoload changes in .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC

"*****************************************************************************
"" Mappings
"*****************************************************************************
"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1


"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Custom configs
let g:javascript_enable_domhtmlcss = 1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd Filetype ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

"" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


 " Automatic formatting
"" autocmd BufWritePre *.rb :%s/\s\+$//e
"" autocmd BufWritePre *.go :%s/\s\+$//e
"" autocmd BufWritePre *.haml :%s/\s\+$//e
"" autocmd BufWritePre *.html :%s/\s\+$//e
"" autocmd BufWritePre *.scss :%s/\s\+$//e
"" autocmd BufWritePre *.slim :%s/\s\+$//e

"" au BufNewFile * set noeol
"" au BufRead,BufNewFile *.go set filetype=go

" " No show command
"" autocmd VimEnter * set nosc

 " Quick ESC
"" imap jj <ESC>

" Jump to the next row on long lines
"" map <Down> gj
"" map <Up>   gk
"" nnoremap j gj
"" nnoremap k gk

" format the entire file
"" nmap <leader>fef ggVG=

" Open new buffers
"" nmap <leader>s<left>   :leftabove  vnew<cr>
"" nmap <leader>s<right>  :rightbelow vnew<cr>
"" nmap <leader>s<up>     :leftabove  new<cr>
"" nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
 noremap <tab> <c-w><c-w>

" Switch between last two buffers
"" nnoremap <leader><leader> <C-^>

" NERDTree
"" nmap <leader>n :NERDTreeToggle<CR>
"" let NERDTreeHighlightCursorline=1
"" let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" Syntastic
"" let g:syntastic_mode_map = { 'mode': 'passive' }
"" let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.0.0-p0/bin/ruby'
