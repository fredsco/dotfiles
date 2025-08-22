" Set comatibility to Vim only
set nocompatible

" Sync Vim's default register with the system clipboard
set clipboard=unnamedplus

set wrap

set encoding=utf-8

set number

" Status bar
set laststatus=2

syntax enable
filetype plugin on

" Finding Files:
"
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" TAG JUMPING: 
"
" Create the `tags` file
command! MakeTags !ctags -R .

" NOW WE CAN: 
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack 

" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with path)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option
" - We can use ^n and ^p to go back and forth in the suggestion list

" FILE BROWSING: 

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
