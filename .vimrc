" filetypes
"filetype plugin off
"filetype indent off
set fileencodings=utf-8,gbk,latin1,ucs2,ucs4
let mapleader = ","
"create ctags and load it
map <silent> <leader>tc :let last_working_dir=getcwd()<cr>:cd ~/<cr>:execute '!ctags -R -f ~/.mytags /usr/include /usr/local/include '.last_working_dir<cr>:set tags=~/.mytags<cr>:execute 'cd '.last_working_dir<cr>:echo "tag file ~/.mytags created and loaded"<cr>
"load ~/mytags
"map <silent> <leader>rt :if findfile(".mytags", "~/") == ".mytags"<cr>set tags=~/.mytags<cr>else<cr>echo "file '~/.mytags' not exist"<cr>endif<cr>
map <silent> <leader>tl :if filereadable(expand("~")."/.mytags")<cr>set tags=~/.mytags<cr>echo "file '~/.mytags' loaded"<cr>else<cr>echo "file '~/.mytags' not exist"<cr>endif<cr>
"reload ~/.vimrc
map <silent> <leader>vr :source ~/.vimrc<cr>:echo "~/.vimrc reloaded"<cr>
map <silent> <leader>h :echo "tc  :create ctags file ~/.mytags and load it \ntl  :load ~/.mytags\nvr  :reload ~/.vimrc"<cr>
"set path include common include file
set path=.
set path+=/usr/include/**
set path+=/usr/local/include
"always show current file path
set statusline+=%F
"if exist workspace.vim at current working directory, load it
if findfile("workspace.vim", ".") == "workspace.vim"
	source workspace.vim
endif
