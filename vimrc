execute pathogen#infect()
set t_Co=256 ruler laststatus=2 number relativenumber title tabstop=4 softtabstop=0  shiftwidth=4 smarttab cursorline list listchars=tab:â–¸\ ,trail:>,eol:Â¬ clipboard=unnamed, nocompatible
"set up tmp dir files, "http://vi.stackexchange.com/questions/177/what-is-the-purpose-of-swap-files

set directory^=~/.vim/tmp//
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <c-l> :bnext<CR>
map <c-h> :bprevious<CR>
map <c-7> :bd<CR>
map <c-0> :%!python -m json.tool<CR>

"Plugin maps
map <c-n> :NERDTreeToggle<CR>
map <c-b> :TagbarToggle<CR>
map <c-c> :VCoolor<CR>

"Linting
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_sass_checkers = ['scss_lint']
let g:syntastic_scss_checkers=["scss_lint"]

let g:syntastic_error_symbol = '--'
let g:syntastic_style_error_symbol = '=='
let g:syntastic_warning_symbol = '--'
let g:syntastic_style_warning_symbol = '=='

hi LintError term=bold cterm=bold ctermbg=196
hi LintWarn term=bold cterm=bold ctermbg=226

highlight link SyntasticErrorSign LintError
highlight link SyntasticWarningSign LintWarn
highlight link SyntasticStyleErrorSign LintError
highlight link SyntasticStyleWarningSign LintWarn

"set background=dark
"colorscheme solarized
"https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
"COLOR STYLES
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set cursorline cursorcolumn
hi CursorLine term=bold cterm=bold ctermbg=236
hi CursorColumn term=bold cterm=bold ctermbg=235

filetype plugin indent on
syntax on

"Ultisnip
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"
"Javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"TERN FOR VIM
let g:tern_map_keys = 1
let g:tern_show_argument_hints='on_hold'
"set foldmethod=syntax

"CTRL P
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"PHP Autocomplete
let g:SuperTabDefaultCompletionType = ""
"ctags -R --fields=+aimlS --languages=php
let g:phpcomplete_mappings = { 'jump_to_def_vsplit': '<C-]>', 'jump_to_def': '<C-[>'}
"VDEBUG
let g:vdebug_options = {'path_maps' : { "/var/www/html/lcms" : "/Users/scottconway/rtn-projects/centos_7_vagrant/html/lcms","/var/www/ccinfo" : "/Users/scottconway/rtn-projects/cc_deploy/www/html/cc_wordpress"} } 

"CSS Setup
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
augroup VimCSS3Syntax
 autocmd!

 autocmd FileType css setlocal iskeyword+=-
augroup END


"disabling arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"macros
let @c='I//€kd'
let @v='I€kD€kDj€kb€kd'

