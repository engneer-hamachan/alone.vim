function! alone#Alone()
    let result = system('alone -d ./')
    let words=split(result,"\n")

    for word in words
      exe 'syntax match ' . word . ' "\<' . word . '\>" containedin=ALL'
      exe 'hi ' . word . ' ctermfg=yellow guifg=yellow'
    endfor
endfunction
