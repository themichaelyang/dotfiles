"Plugins
call plug#begin('~/.vim/bundle')
Plug 'slim-template/vim-slim'
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-commentary'
call plug#end()

"Syntax Highlighting
syntax on
colorscheme solarized
"set t_Co=256

"Whitespace
set expandtab     "Soft tabs
set smarttab
set softtabstop=2
set tabstop=2
set shiftwidth=2

"Indentation
set autoindent                  "Auto Indentation
set smartindent
filetype plugin indent on       "Turn on filetype detection

"Editor Appearance
set number        "Line numbers
set showmode     "Show current mode down the bottom
set laststatus=2  "Show statusline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
"autocmd vimenter * NERDTree

"Under the Hood
set autoread      "Reload files changed outside vim
set hidden        "http://items.sjbach.com/319/configuring-vim-right
"set exrc          "Enable project specific .vimrc files
set secure        "Disable unsafe commands in project .vimrc files

"Long Lines
set nowrap
set sidescroll=1

"Enable Mouse
set mouse=a

"Key Remap
imap jk <Esc>
"U for undo
noremap U <C-R>

"Auto turn on/off paste mode to preserve indentation on paste
"https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

"Auto reload .vimrc
"http://www.bestofvim.com/tip/auto-reload-your-vimrc/
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
