" # Basic Settings
set nocompatible				" vim-specific settings, non-vi-compatible
set backspace=indent,eol,start 	" Allow backspace in insert mode
set number						" Line numbers
set relativenumber
set hidden						" Allow hidden buffers
filetype plugin indent on		" Enable file type detection and do language-dependent indenting.
set history=100					" Default = 8
nnoremap ; :
set tabstop=4					" Default tabs are too big
set wrap						" Turn on word wrapping
set linebreak					" Only wrap at sensible places
set nolist						" list disables linebreak
set textwidth=0					" prevent Vim from automatically inserting line breaks
set wrapmargin=0
set formatoptions-=t			" Don't change wrapping on existing lines
set formatoptions+=l			" Black magic
au BufRead,BufNewFile *.md setlocal textwidth=80
" # Install Plugins
call plug#begin("~/.vim/autoload")
	" ## Themes
	Plug 'https://github.com/chriskempson/vim-tomorrow-theme'
	Plug 'vim-airline/vim-airline-themes'

	" ## Markdown
	Plug 'nelstrom/vim-markdown-folding'
	Plug 'tpope/vim-markdown'

	" ## Other Tools
	Plug 'https://github.com/sirtaj/vim-openscad'	" OpenSCAD syntax hilighting
	Plug 'vim-airline/vim-airline'					" Airline bar
	Plug 'scrooloose/syntastic'						" syntax info
	Plug 'Raimondi/delimitmate'						" smart completion of delimiters
	Plug 'dhruvasagar/vim-table-mode'				" create tables

	"## Viwwiki
	Plug 'vimwiki/vimwiki'
call plug#end()

" # Plugin Settings
set laststatus=2		" Make airline status bar appear all the time
set foldenable			" Enable markdown folding
let g:airline#extensions#wordcount#enabled = 1	"Show word count
" Get rid of pointless Airline separators because I don't want to install a
" patched font to make them look right
let g:airline_left_sep=''
let g:airline_right_sep=''

" Remove existing autocommands to avoid duplicates
:autocmd!
"Force Airline to refresh after setup so settings work
:autocmd VimEnter * :AirlineRefresh


" # Color Scheme
syntax on
syntax enable			" I have no idea what this actually does
set background=dark
set t_Co=256			" 256 colors, terrible for most themes, but best for Tomorrow-Nights
colorscheme Tomorrow-Night

"vimwiki settings

let wiki_1={}
let wiki_1.path='~/vimwiki/'
let wiki_1.path_html='~/vimwiki_html/'

let wiki_2={}
let wiki_2.path='~/privatewiki/'
let wiki_2.path_html='~/privatewiki_html/'

let g:vimwiki_list=[wiki_1,wiki_2]
