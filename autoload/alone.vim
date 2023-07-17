function! alone#Alone(dir)
    let result = system('alone -d ' . a:dir)
    let words=split(result,"\n")

    if exists('alone_word_exists')
      exe 'syntax clear ' . "aloneWord" 
    endif

    for word in words
      exe 'syntax match ' . "aloneWord" . ' "\<' . word . '\>" containedin=ALL'
    endfor

    exe 'hi ' . "aloneWord" . ' ctermfg=yellow guifg=yellow'

    let g:alone_word_exists = 1
endfunction
