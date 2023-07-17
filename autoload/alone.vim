function! alone#Alone(dir)
    let result = system('alone -d ' . a:dir)
    let words=split(result,"\n")

    if hlexists('aloneWord')
      exe 'syntax clear ' . "aloneWord" 
    endif

    for word in words
      exe 'syntax match ' . "aloneWord" . ' "\<' . word . '\>" containedin=ALL'
    endfor

    exe 'hi ' . "aloneWord" . ' ctermfg=yellow guifg=yellow'
endfunction
