set nocompatible                " required for Vundle
filetype off                    " required for Vundle

" set number		        " line numbers are always visible
set nowrap		        " disable soft breaks
set ignorecase		        " ignore case on search
set hidden		        " keep undo history on buffer change
set splitbelow                  " open new split/window alwas at the bottom 
set splitright			" open new split/window alwas at the right 
" set expandtab                 " use soft tabs and 2 spaces
" set shiftwidth=2              " use soft tabs and 2 spaces
" set softtabstop=2             " use soft tabs and 2 spaces
set ttimeoutlen=0 		" prevents delays on ESC in vim-airline plugin
" set clipboard^=unnamed	" activate clipboard 
set fdo-=search			" search only in unfolded text
set noshowmode			" remove default mode indicator
set encoding=utf-8
" nnoremap p p`[v`]=		" auto indent and go to last line after paste
" vnoremap y y`]			" auto go to last line after yank

" required for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
Plugin 'google/vim-searchindex'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" required for Vundle (All of your Plugins must be added before the following line)
call vundle#end()
filetype plugin indent on

" Color Schemes "
syntax enable
set background=dark
colorscheme solarized

" vim-gitgutter
"" Reduce update time
set updatetime=100

" ctrlp
"" Change the default mapping and the default command
let g:ctrlp_map = '<c-p>'
"" Default open buffer list
let g:ctrlp_cmd = 'CtrlP'
"" Set working directory to current directory
let g:ctrlp_working_path_mode = ''
"" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" editorconfig-vim
"" Ensure that it works well with Fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" nerdtree
map <C-n> :NERDTreeToggle<CR>
"" Close the NERDTree when it's collapsed
let NERDTreeQuitOnOpen=1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"" Show full path when file names are same
let g:airline#extensions#tabline#formatter = 'unique_tail'
"" Show tabline when 2 buffers are open
let g:airline#extensions#tabline#buffer_min_count = 2
"" Hide some sections
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = ''
