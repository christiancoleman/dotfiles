set nocompatible	" seems to allow some plugins to work 
set number			" show line numbers
set tabstop=4		" show tabs as four spaces
set wildmenu		" when you press tab it'll show a list of commands available to you
set showmatch		" if you highlight a ( it'll show the matching )
syntax on			" allows syntax highlighting
filetype indent plugin on	" load the appropriate filetype plugin depending on filetype
set ls=2			" always show status in tmux, even if one pane

" characters to show in certain situations
set listchars=eol:●,tab:⁘▸,trail:⎕,extends:>,precedes:<

" needed to actually show the characters defined in the previous lines
set list

" macro to show cursorline if you press F4, can toggle at will 
nnoremap <silent> <F4> :set cursorline!<CR>

set autoindent		" autoindenting code

" make backspace work as expected, allowing backspace to delete past indentations, line breaks, and insert start points
set backspace=indent,eol,start

" fix issue where using vim inside tmux wasn't showing colors correctly
set t_Co=256

" used by Powerline; remove if Powerline is not installed
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
