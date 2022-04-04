" enable mouse
set mouse=a

" same as set number
set nu 

" auto indent when change line in c or c++
set cindent

" see :help tabstop
set tabstop=4
set shiftwidth=4
set expandtab

" keybindings
nnoremap <C-s> :wa<CR>

" make sure you have already installed g++
" nnoremap <F5>  :wa<CR>:!g++ % -o /tmp/a.out && /tmp/a.out<CR>
nnoremap <F5> :wa<CR>:make<CR><CR><CR>

" for nerd-tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR> 


" vim-plug
call plug#begin()

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()
