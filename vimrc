" settings
" location for swap files
set directory="$XDG_DATA_HOME/vim/swap,~/.local/share/vim/swap,~/vimswap,."
set nowrap
set number
set rnu
set scrolloff=2
set showtabline=0
let g:netrw_banner=0
autocmd BufEnter * {
    set tabstop=2
    set shiftwidth=2
    set expandtab
    set cindent
}

" status line
set laststatus=2
" use :tabs to see tabs

" colours
colorscheme murphy
syntax on

" dealing with the having no clipbopard integration
command! Copy {
    exe "!echo " .. getreg("\"") .. "| xclip -selection clipboard "
}


" key bindings
map - :Ex %:h<CR>
map <Space>ee :buffer 
map <C-h> zh
map <C-l> zl
map gcc :s/\(\s*\)\(.*\)/\1\/\/ \2/<CR>
map gkk :s/\/\/ \(.*\)/\1/<CR>
map <Space>hh :set hlsearch!<CR>
