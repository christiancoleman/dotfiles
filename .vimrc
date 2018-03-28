set nocompatible	" seems to allow some plugins to work 
set number			" show line numbers
set tabstop=4		" show tabs as four spaces
set shiftwidth=4	" how many columns are spaced when using >> or <<
set hlsearch		" highlight all search matches
set incsearch		" start highlighting matches as soon you start typing
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
set smartindent 	" automatically adds another level of indent in some cases

" make backspace work as expected, allowing backspace to delete past indentations, line breaks, and insert start points
set backspace=indent,eol,start

" autocomplete for vim commands
set wildmenu
set wildmode=longest:full,full

" cursor will stay X number of lines consistently away from screen top or bottom
set scrolloff=5

" fix issue where using vim inside tmux wasn't showing colors correctly
set t_Co=256

" used by Powerline; remove if Powerline is not installed
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

execute pathogen#infect()

let g:apex_tooling_force_dot_com_path = "/root/.vim/bundle/vim-force.com/tooling-force.com-0.4.0.2.jar"

if !exists("g:apex_backup_folder")
	let g:apex_backup_folder = "/tmp/vim-force.com/backup/"
endif

if !exists("g:apex_temp_folder")
	let g:apex_temp_folder = "/tmp/vim-force.com/temp/"
endif

" Requires a build.properties which will be unique to every project
if !exists("g:apex_properties_folder")
	let g:apex_properties_folder="/root/workspace_salesforce/DevSocial/"
endif

let g:apex_API_version="39.0"

set autowrite " not strictly required, but without it you will be getting errors when running commands that open new buffer (e.g. :ApexQuery or :ApexExecuteAnonymous) on unsaved file

let g:apex_server_timeoutSec=60*30 " allow server to wait for new connections within 30 minutesj
