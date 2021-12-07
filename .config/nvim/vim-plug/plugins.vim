" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Intellisense using CoC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Snippets
    Plug 'honza/vim-snippets'

    " Ranger for file browsing
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Startify for start screen and project management
    Plug 'mhinz/vim-startify'

    " Which Key
    " Plug 'liuchengxu/vim-which-key'

    " Status Line (Airline)
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Themes
    Plug 'dracula/vim', { 'as': 'dracula' } 
    Plug 'tomasiser/vim-code-dark'
    Plug 'morhetz/gruvbox'
    Plug 'rakr/vim-one'
    Plug 'lifepillar/vim-solarized8'
    Plug 'arcticicestudio/nord-vim'

call plug#end()
