syntax on
set mouse=a
set number
command Wq wq
command W w
command Q q
command WQ wq
helptags ~/.vim/bundle/nerdtree/doc/
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
execute pathogen#infect()
call pathogen#helptags()
set scrolloff=5
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
let mapleader="\<Space>"
nnoremap <leader>w :w<cr>
inoremap " ""<Left>
inoremap [ []<Left>
nnoremap <leader>k :m-2<cr>==
nnoremap <leader>j :m+<cr>==
xnoremap <leader>k :m-2<cr>gv=gv
xnoremap <leader>j :m'>+<cr>gv=gv
