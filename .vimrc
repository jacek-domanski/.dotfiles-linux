set tabstop=2
set shiftwidth=0
set termguicolors

set autoindent
set cindent
inoremap { {<CR>}<up><end><CR>

set timeoutlen=1000 ttimeoutlen=0 " to disable delay after exiting insert or visual

set laststatus=2 " So lightline works
set noshowmode " So mode is hidden, as lightline shows it

set number " Show current line number
set relativenumber " Show relative line numbers

" Changing cursor
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

let &t_SI = "\<Esc>[6 q" "SI = INSERT mode
let &t_SR = "\<Esc>[4 q" "SR = REPLACE mode
let &t_EI = "\<Esc>[2 q" "EI = NORMAL mode (ELSE)

syntax enable
colorscheme monokai

" Correct interpretation of C syntax
let g:c_syntax_for_h = 1
let g:c_syntax_for_c = 1

