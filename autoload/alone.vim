function! alone#Alone(dir)
    let result = system('alone -d ' . a:dir)
    let words=split(result,"\n")

    for word in words
      exe 'syntax match ' . word . ' "\<' . word . '\>" containedin=ALL'
      exe 'hi ' . word . ' ctermfg=yellow guifg=yellow'
    endfor
endfunction
