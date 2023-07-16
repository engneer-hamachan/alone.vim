function! alone#Alone(dir)
    let result = system('alone -d ' . a:dir)
    let words=split(result,"\n")

    for word in words
      exe 'syntax match ' . word . ' "\<' . word . '\>" containedin=ALL'
      exe 'highlight link ' . word . ' Identifier'
      exe 'hi! link ' . word . ' Statement'
      exe 'hi ' . word . ' ctermfg=yellow guifg=yellow'
    endfor
endfunction
