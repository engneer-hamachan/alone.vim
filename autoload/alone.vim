function! Alone()
    let result = system('rsgo ' . bufname(""))
    let words=split(result,"\n")
    let currentFileWords = []

    for word in words
        if currentFileWord !=# ''
            call add(currentFileWords, currentFileWord)
        endif
    endfor

    for word in currentFileWords
      if exists('b:current_syntax') && exists('b:current_syntax') && b:current_syntax == word
        unlet b:current_syntax
      endif

      exe 'syntax match ' . word . ' "\<' . word . '\>" containedin=ALL'
      exe 'highlight link ' . word . ' Identifier'
      exe 'hi! link ' . word . ' Statement'
      exe 'hi ' . word . ' ctermfg=yellow guifg=yellow'
    endfor
endfunction
