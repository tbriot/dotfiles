let mapleader = " "

set number          " Show line numbers
set relativenumber  " Show relative line numbers (commented out)

" Indentation
set tabstop=4       " Number of spaces tab counts for
set softtabstop=4   " Number of spaces for tab while editing
set shiftwidth=4    " Number of spaces for autoindent
set expandtab       " Use spaces instead of tabs
set smartindent     " Smart autoindenting

" Display
set wrap=false      " Don't wrap long lines
set cursorline      " Highlight current line
set showmatch       " Show matching brackets
set showcmd         " Show command in status line

" Search
set hlsearch        " Highlight all search matches
set incsearch       " Incremental search
set ignorecase      " Ignore case in searches
set smartcase       " Case-sensitive if uppercase used

" Colors and appearance
set termguicolors   " Enable true color support
set scrolloff=8     " Keep 8 lines visible when scrolling
set signcolumn=yes  " Always show sign column
set colorcolumn=80  " Show column at 80 characters

" Files and backup
set swapfile=false  " Don't use swapfile
set backup=false    " Don't create backup files
set undofile        " Enable persistent undo
set undodir=$HOME/.vim/undodir  " Directory for undo files

" Performance
set updatetime=50   " Faster update time
set timeoutlen=500  " Timeout for mappings

" =============================================================================
" CURSOR AND HIGHLIGHTING
" =============================================================================

" Cursor style (Vim version of guicursor)
if exists('&guicursor')
    set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor2
endif

" Highlight yanked text
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END

" =============================================================================
" KEY MAPPINGS (from remap.lua)
" =============================================================================

" File explorer
nnoremap <leader>pv :Ex<CR>

" Move lines around in Visual Line mode
xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv

" Navigation improvements
nnoremap J mzJ`z              " Keep cursor in place when joining lines
nnoremap <C-d> <C-d>zz        " Keep cursor in middle when half-page down
nnoremap <C-u> <C-u>zz        " Keep cursor in middle when half-page up
nnoremap n nzzzv              " Keep cursor in middle when searching forward
nnoremap N Nzzzv              " Keep cursor in middle when searching backward

" Clipboard operations
xnoremap <leader>p "_dP       " Paste without losing text in default register
nnoremap <leader>y "+y        " Yank to system clipboard
xnoremap <leader>y "+y        " Yank to system clipboard (visual mode)
nnoremap <leader>Y "+Y        " Yank line to system clipboard
nnoremap <leader>d "_d        " Delete to void register
xnoremap <leader>d "_d        " Delete to void register (visual mode)

" Miscellaneous mappings
inoremap <C-c> <Esc>          " Escape from insert mode
nnoremap Q <nop>              " Disable Ex mode
nnoremap <leader><leader> :so %<CR>  " Source current file

" Substitute current word
nnoremap <leader>s :%s/\<C-r><C-w\>/\<C-r><C-w\>/gI<Left><Left><Left>

" Make current file executable
nnoremap <leader>x :!chmod +x %<CR>

" =============================================================================
" TMUX INTEGRATION
" =============================================================================

" Change project (requires tmux-sessionizer.sh)
nnoremap <C-f> :silent !tmux neww tmux-sessionizer.sh<CR>

" =============================================================================
" LSP CONFIGURATION (if using vim-lsp or similar)
" =============================================================================

" Format with LSP (requires LSP plugin)
if exists(':LspFormat')
    nnoremap <leader>f :LspFormat<CR>
endif

" =============================================================================
" PLUGIN-SPECIFIC MAPPINGS
" =============================================================================

" vim-with-me plugin (if installed)
if exists('g:loaded_vim_with_me')
    nnoremap <leader>vwm :StartVimWithMe<CR>
    nnoremap <leader>svwm :StopVimWithMe<CR>
endif

" CellularAutomaton plugin (if installed)
if exists('g:loaded_cellular_automaton')
    nnoremap <leader>mr :CellularAutomaton make_it_rain<CR>
endif

" Edit packer config (if using packer in Vim)
nnoremap <leader>vpp :e ~/.dotfiles/nvim/.config/nvim/lua/tbriot/packer.lua<CR>

" =============================================================================
" STATUS LINE
" =============================================================================

" Always show status line
set laststatus=2

" Custom status line (basic version)
set statusline=%f         " File name
set statusline+=%m        " Modified flag
set statusline+=%r        " Read-only flag
set statusline+=%h        " Help flag
set statusline+=%w        " Preview flag
set statusline+=%=        " Right align
set statusline+=%y        " File type
set statusline+=\ %l/%L   " Line number/total lines
set statusline+=\ %c      " Column number
set statusline+=\ %P      " Percent through file

" =============================================================================
" CUSTOM FUNCTIONS
" =============================================================================

" Example: Function to make file executable
function! MakeExecutable()
    if !executable('chmod')
        echo "chmod command not found"
        return
    endif
    let l:cmd = 'chmod +x ' . shellescape(expand('%:p'))
    call system(l:cmd)
    if v:shell_error == 0
        echo "Made " . expand('%') . " executable"
    else
        echo "Failed to make " . expand('%') . " executable"
    endif
endfunction

" Override the mapping with the function
nnoremap <leader>x :call MakeExecutable()<CR>