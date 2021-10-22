let s:soundpath = expand('<sfile>:h:h') . '/sound'
let s:soundlist = glob(s:soundpath . '/**.wav')->split("\n")->map('fnamemodify(v:val,":t")[0:-5]')

" play sound
function! mai#sound(name) abort
  let l:sound = s:soundlist->filter("v:val==a:name")
  if l:sound == []
    return
  endif
  if exists('*sound_playfile')
    call sound_playfile(s:soundpath . '/' . l:sound[0] . '.wav')
  else
    silent! exec '!afplay ' . s:soundpath . '/' . l:sound[0] . '.wav' . ' &'
  endif
  redraw!
endfunction

" show soundlist
function! mai#soundlist() abort
  echo s:soundlist
endfunction
