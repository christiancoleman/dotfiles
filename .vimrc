" used by Powerline; remove if Powerline is not installed
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

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

" macro to show 
nnoremap <silent> <F4> :set cursorline!<CR>
