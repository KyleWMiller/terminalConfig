set number		 "This turns on line numbering
let name = "Kyle"	 "Set my name into the name variable

syntax on			 "enable syntax procesing
set mouse=a			 " Allows mouse use in (a)ll modes
"Color Scheme
colorscheme molokai	 "This is the color scheme of my vim
let g:molokai_original = 1
let g:rehash256 = 1

set tabstop=4
set softtabstop=4

set showcmd		 "Show command in bottom of bar

set wildmenu		 "Visual autocomplete for command menu

set lazyredraw		 "Redraw only when need to. this allows for faster macros

set showmatch 		 "Highlight matching [{()}]

set incsearch 		 "Searches as characters are entered
set hlsearch 		 "Highlight maches
	"I might need this for unhighlighting searches
nnoremap <leader><space> :nohlsearch<CR>

set foldenable		 "Enable folding (this is how to close lines for easier file structuring)
set foldlevelstart=10 	 "Everything below the 10th child from the top will be folded
"set foldmethod=indent   Fold based on indent level

"Move vertically by visual line
nnoremap j gj
nnoremap k gk

"Move to beinning/end of line
nnoremap B ^
nnoremap E $
"Stops excution
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap gV `[v`]	 " Highlights last inserted text
inoremap jk <esc>	 " This allows you to exit insert mode with 'jk'

" Pathogen used for loading runtime packages
execute pathogen#infect()

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


