let s:soundpath = expand('<sfile>:h:h') . '/sound'
let s:soundlist = glob(s:sound_path . '/**.wav')->split("\n")->map('fnamemodify(v:val,":t")[0:-5]')

function! PlaySound(name) abort
  let l:sound = s:soundlist->filter("v:val==a:name")
  if l:sound == []
    return
  endif
  silent! exec '!afplay ' . s:soundpath . '/' . l:sound[0] . '.wav' . ' &'
  redraw!
endfunction
