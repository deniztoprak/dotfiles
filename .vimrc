set nocompatible                " required for Vundle
filetype off                    " required for Vundle

" set number		        " line numbers are always visible
set nowrap		        " disable soft breaks
set ignorecase		        " ignore case on search
set hidden		        " keep undo history on buffer change
set splitbelow                  " open new split/window alwas at the bottom 
set splitright			" open new split/window alwas at the right 
" set expandtab                   " use soft tabs and 2 spaces
" set shiftwidth=2                " use soft tabs and 2 spaces
" set softtabstop=2               " use soft tabs and 2 spaces
set ttimeoutlen=0 		" eliminate delays on ESC
set clipboard^=unnamed		" activate clipboard 
set fdo-=search			" search only in unfolded text
set noshowmode			" remove default mode indicator
nnoremap p p`[v`]=		" auto indent and go to last line after paste
vnoremap y y`]			" auto go to last line after yank

" required for Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'google/vim-searchindex'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'

" required for Vundle (All of your Plugins must be added before the following line)
call vundle#end()
filetype plugin indent on

" Color Schemes "
syntax enable
set background=dark
colorscheme solarized

" ale
"" add prettier support
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']
"" run prettier on save
let g:ale_fix_on_save = 1

" ctrlp
"" Change the default mapping and the default command
let g:ctrlp_map = '<c-p>'
"" Default open buffer list
let g:ctrlp_cmd = 'CtrlP'
"" When invoked without an explicit starting directory, CtrlP will set its working directory
let g:ctrlp_working_path_mode = 'ra'
"" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" editorconfig-vim
"" Ensure that it works well with Fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" nerdtree
map <C-n> :NERDTreeToggle<CR>
"" Close the NERDTree when it's collapsed
let NERDTreeQuitOnOpen=1

" ultisnips
"" Trigger configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"" Show full path when file names are same
let g:airline#extensions#tabline#formatter = 'unique_tail'
"" Show tabline when 2 buffers are open
let g:airline#extensions#tabline#buffer_min_count = 2
"" Hide some sections
let g:airline_section_b = ''
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = ''
