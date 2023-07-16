if exists('loded_alone_vim')
  finish
endif

let g:loded_alone_vim = 1

command! -nargs=1 Alone call alone#Alone(<f-args>)
