syntax on

" Set tab size to 4.
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent

" Show line number
set number

" Change tab to spaces in Elm files.
autocmd Filetype elm setlocal expandtab
" Change tab to 2 spaces in JSON files.
autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2

" Stuff for Vundle to work.
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vhdirk/vim-cmake'

call vundle#end()

" Set the color scheme to dark mode.
set bg=dark
" Set the color scheme's contrast.
let g:gruvbox_contrast_dark='hard'
" Set the color scheme.
colorscheme gruvbox

" Remap Ctrl+Shift+ArrowKeys to move betweens splits,
nnoremap <C-S-Left> <C-W><C-H>
nnoremap <C-S-Right> <C-W><C-L>
nnoremap <C-S-Up> <C-W><C-K>
nnoremap <C-S-Down> <C-W><C-J>

" Start NERDTree when Vim opens. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists('s:std_in') | wincmd p | endif
" Show hidden files in NERDTree
let NERDTreeShowHidden = 1

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
        \ quit | endif
