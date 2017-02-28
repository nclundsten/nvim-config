call plug#begin('~/.config/nvim/vim-plug')

  Plug 'airblade/vim-gitgutter'
  Plug 'iCyMind/NeoSolarized'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'

call plug#end()

set termguicolors

" solarized config
colorscheme NeoSolarized
set background=dark
let g:gitgutter_override_sign_column_highlight = 0

" airline config
let g:airline_powerline_fonts = 1

" nerdtree config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen = 1
map <C-e> :NERDTreeToggle<CR>


" supposed to keep you from opening buffers into nonmodifiable 'explorer' buffers
let g:miniBufExplModSelTarget = 1


" use jj to exit insert mode
imap jj <Esc>
" no-plugin quick buffer
nnoremap <C-b> :NERDTreeClose <CR>:buffers<CR>:b 
set relativenumber             " use relative line numbers
set number                     " show actual line number of the line we're on

" thanks EvanDotPro : https://github.com/EvanDotPro/vim-configuration
set virtualedit=all            " allow for cursor beyond last character
set history=1000               " Store a ton of history (default is 20)
set hidden                     " allow buffer switching without saving
set cpoptions+=$               " cool trick to show what you're replacing
set showmatch                  " show matching brackets/parenthesis
set showcmd                    " show multi-key commands as you type
set incsearch                  " find as you type search
set hlsearch                   " highlight search terms
set ignorecase                 " case insensitive search
set smartcase                  " case sensitive when uc present
set wildmenu                   " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set scrolljump=5               " lines to scroll when cursor leaves screen
set scrolloff=3                " minimum lines to keep above and below cursor
set list                       " use the listchars settings
set listchars=tab:▸\           " show tabs
set colorcolumn=81
"color is for lucius dark
hi ColorColumn guibg=#292929

" Highlight trailing whitespace in red
" Source: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" youtu.be/XA2WjJbmmoM
" search down into subfolders
set path+=**
" display all matching files when we tab complete
set wildmenu
" Now we can
" - hit tab to :find by partial match
" - use * to make it fuzzy
" Consider
" - :b lets you autocomplete any open buffer

