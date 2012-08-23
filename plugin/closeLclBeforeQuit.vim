if exists("g:close_lcl_before_quit") || &cp
    finish
endif
let g:close_lcl_before_quit = 1

function! ConfirmQuit()
    lcl
    quit
endfu

cnoremap <silent> q<cr>  call ConfirmQuit()<cr>
cnoremap <silent> wq<cr> call ConfirmQuit()<cr>
cnoremap <silent> x<cr> call ConfirmQuit()<cr>
