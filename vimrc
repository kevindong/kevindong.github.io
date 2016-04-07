" takes advantage of vim improvements on vi
set nocompatible

" make backspace work as expected
set backspace=eol,start,indent

syntax on

" search as you type
set incsearch

" disable search result highlighting
"set nohls

" enable search result highlighting
set hlsearch

" Set line numbers on
set nu

" Fixes common typos
"  correct :W to :w #typo
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
"  correct :Q to :q #typo
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))

set pastetoggle=<F11>
" Always display the current cursor position in the lower right of the Vim
" window.
set ruler
" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Set this to the name of your terminal that supports mouse codes.
set ttymouse=xterm2
