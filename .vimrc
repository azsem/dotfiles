" ==================== BASIC SETTINGS ====================
set nocompatible              " Use improved Vim features
filetype plugin on            " Enable file type detection (simplified for Neovim)
syntax on                     " Enable syntax highlighting
set encoding=utf-8            " UTF-8 encoding
set fileencoding=utf-8
scriptencoding utf-8          " Script encoding

" ==================== INTERFACE ====================
set number                    " Line numbers
set relativenumber            " Relative line numbers
set cursorline                " Highlight current line
set title                     " Set window title
set showcmd                   " Show commands in status line
set wildmenu                  " Enhanced command-line completion
set lazyredraw                " Faster redrawing
set ttyfast                   " Faster redrawing
set laststatus=2              " Always show status line
set ruler                     " Show cursor position
set noshowmode                " Don't show mode (lightline handles this)
set nowrap                    " No line wrapping (overrides previous wrap setting)

" ==================== SEARCH ====================
set incsearch                 " Incremental search
set hlsearch                  " Highlight search results
set ignorecase                " Case-insensitive search
set smartcase                 " Smart case (case-sensitive if uppercase)

" ==================== INDENTATION AND TABS ====================
"set expandtab                 " Replace tabs with spaces
set tabstop=8                 " Tab width
set shiftwidth=8              " Indent size for autoindent
set softtabstop=8             " Spaces when editing
set autoindent                " Auto indentation
set smartindent               " Smart auto indentation
set smarttab                  " Smart tab handling

" ==================== TEXT HANDLING ====================
set linebreak                 " Wrap at word boundaries
set textwidth=80              " Default text width
set colorcolumn=80            " Vertical line at 80th column
set list                      " Show invisible characters
set listchars=tab:\›\-,trail:·,extends:¤,nbsp:. " symbols: › • » · ¤ ¬

" ==================== FILES AND BUFFERS ====================
set hidden                    " Switch buffers without saving
set autowrite                 " Auto save before :next, :make etc.
set autoread                  " Auto-reload files changed externally
set writebackup               " No backup files
set backup
set swapfile                  " No swap files
set undofile                  " Persistent undo history
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Enhanced file discovery
set path+=**                  " Search current directory recursively
set wildignore+=*.swp,~*      " Ignore swap files in wildmenu
set wildignore+=*.zip,*.tar   " Ignore archives in wildmenu

" ==================== WINDOW MANAGEMENT ====================
set splitbelow                " New horizontal splits go below
set splitright                " New vertical splits go right

" ==================== FOLDING ====================
set foldmethod=marker         " Folding based on markers

" ==================== SYSTEM INTEGRATION ====================
set mouse=a                   " Full mouse support
set clipboard=unnamedplus     " Use system clipboard

" ==================== PERFORMANCE ====================
set scrolloff=3               " Scroll offset from edges
set sidescrolloff=3
set history=1000              " Command history
set timeoutlen=500            " Key combination timeout

" ==================== TERMINAL INTEGRATION ====================
" True color support
set t_Co=256
if has('termguicolors')
    set termguicolors
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
endif

" ==================== KEY MAPPINGS ====================
"let mapleader = ","           " Leader key

" Fast escape to normal mode
"inoremap jk <Esc>
"inoremap kj <Esc>

" Search highlighting
nnoremap <leader><space> :nohlsearch<cr>
nmap <silent> <leader>/ :nohlsearch<cr>

" File operations
nmap <leader>w :w!<cr>        " Quick save
nmap <leader>q :q<cr>        " Quick quit

" Buffer navigation
nmap <leader>bn :bnext<cr>
nmap <leader>bp :bprevious<cr>

" Terminal integration
map <Leader>tt :term<CR>      " Open terminal

" Language input methods
map <C-l> :set keymap=<CR>
map <C-l>r :set keymap=russian-jcuken<CR>
map <C-l>u :set keymap=ukrainian-jcuken<CR>

" Folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Utilities
map <Leader>ct :r !date "+\%H:\%M   "<CR> " Insert current time

" ==================== PLUGIN CONFIGURATION ====================
"if filereadable(expand("~/.vimrc.plug"))
"    source ~/.vimrc.plug
"endif

" NERDTree
"map <C-n> :NERDTreeToggle<CR>

" NERDCommenter
"let g:NERDCustomDelimiters = { 'c': { 'left': '/* ','right': ' */' } }

" Latex Live Preview
"let g:livepreview_previewer = 'zathura'
"map <Leader>lp :LLP<CR>

" Arduino
"nnoremap <buffer> <leader>aa <cmd>ArduinoAttach<CR>
"nnoremap <buffer> <leader>am <cmd>ArduinoVerify<CR>
"nnoremap <buffer> <leader>au <cmd>ArduinoUpload<CR>
"nnoremap <buffer> <leader>ad <cmd>ArduinoUploadAndSerial<CR>
"nnoremap <buffer> <leader>ab <cmd>ArduinoChooseBoard<CR>
"nnoremap <buffer> <leader>ap <cmd>ArduinoChooseProgrammer<CR>

" Vifm file manager
"map <Leader>vv :Vifm<CR>
"map <Leader>vs :VsplitVifm<CR>
"map <Leader>sp :SplitVifm<CR>
"map <Leader>dv :DiffVifm<CR>
"map <Leader>tv :TabVifm<CR>

" Lightline status line
"let g:lightline = {
"       \ 'colorscheme': 'apprentice',
"       \ }

" Tbone (tmux integration)
"map <Leader>ty :Tyank<CR>
"map <Leader>tp :Tput<CR>

" ==================== COLOR SCHEME ====================
colorscheme quiet
set background=dark           " Dark background

" Load custom color settings if available
if filereadable(expand("~/.vi_ground"))
    source ~/.vi_ground
endif

" ==================== AUTOMATION ====================
" Remove trailing whitespace on save
"autocmd BufWritePre * %s/\s\+$//e

" Auto-close brackets
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>

" ==================== LOCAL SETTINGS ====================
" Load local settings if they exist
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
