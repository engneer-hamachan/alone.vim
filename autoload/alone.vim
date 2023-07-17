function! alone#Alone(dir)
    let result = system('alone -d ' . a:dir)
    let words=split(result,"\n")

    exe 'syntax clear ' . "aloneWord" 

    for word in words
      exe 'syntax match ' . "aloneWord" . ' "\<' . word . '\>" containedin=ALL'
    endfor

    exe 'hi ' . "aloneWord" . ' ctermfg=yellow guifg=yellow'
endfunction
