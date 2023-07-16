if exists('loded_alone_vim')
  finish
endif

let g:loded_alone_vim = 1

command! Alone call alone#Alone()
