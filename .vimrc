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
