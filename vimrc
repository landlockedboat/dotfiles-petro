" People apparently have this line in their .vimrc a lot.
" Syntax highlitning worked from the beginning for me.
syntax on

" For pathogen
execute pathogen#infect()

" For the :find command
set path=$PWD/**

" http://stackoverflow.com/questions/31695455/vim-how-do-i-disable-the-default-logipat-plugin
" This plugin conflicts with :Explore
" Its command is :ELP and it bothers me to no end
" This is a way of disabling the module that conflicts with
" :Explore.
let g:loaded_logipat = 1

" http://stackoverflow.com/questions/815548/how-do-i-tidy-up-an-html-files-indentation-in-vi
" Identation, one shift equals two spaces
set shiftwidth=2

" Identation for html files, i dont know why it doesn't work like
" this by default.
filetype indent on
set filetype=html

" http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
" Tabs bad, spaces good
set tabstop=2
set expandtab

" http://learnvimscriptthehardway.stevelosh.com/chapters/12.html
" Convert all tabs into spaces on opening a file, also indent it nicely
autocmd BufReadPre * :normal gg=G | retab

" http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
" Draws a red line at 80 columns
set colorcolumn=77

" http://stackoverflow.com/questions/237289/vim-configure-line-number-coloring
" Sets line numbers on by default and colors them in white
set number
highlight LineNr ctermfg=white

" http://stackoverflow.com/questions/10499866/
" deselecting-matching-strings-after-search-and-replace-in-vim<Paste>
" This is for deselecting matching lines after a search
" Leader is \, btw
map <Leader><Space> :noh<CR>

" I is no pearl developer
" http://stackoverflow.com/questions/11666170/vim-persistent-set-syntax-for-a-given-filetype
autocmd BufNewFile,BufRead *.pl   set syntax=prolog

autocmd BufNewFile,BufRead *.clips   set syntax=clips

" For using the clipboard as the buffer when copying and pasting
" http://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-in-vim
set clipboard=unnamedplus

" For quickly changing window splits
" http://vim.wikia.com/wiki/Switch_between_Vim_window_splits_easily
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" For activating filetype plugins
filetype plugin on

" For moving lines around
" http://vim.wikia.com/wiki/Moving_lines_up_or_down
" only works in insert mode!
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi

" For saving
nmap <C-S> :w<CR>

" Memory isn't an issue anymore, we can afford to keep stored
" more than 20 Ex commands in memory at once.
set history=200
