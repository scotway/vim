execute pathogen#infect()
    
set t_Co=256 ruler laststatus=2 number relativenumber title tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

map :ntt :NERDTreeToggle

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

syntax on
"set background=dark
"colorscheme solarized
"COLOR STYLES 
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'
        
filetype plugin indent on

"Ultisnip
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<c-j>"
 let g:UltiSnipsJumpForwardTrigger="<c-j>"
 let g:UltiSnipsJumpBackwardTrigger="<c-k>"

 " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"

"Javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1 
"TERN FOR VIM
let g:tern_map_keys = 1
let g:tern_show_argument_hints='on_hold'
"set foldmethod=syntax

"VDEBUG
let g:vdebug_options = {'path_maps' : { "/var/www/html/lcms" : "/Users/scottconway/rtn-projects/centos_7_vagrant/html/lcms"} } 
