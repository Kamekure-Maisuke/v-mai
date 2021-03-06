" wavファイル情報
let s:soundpath = expand('<sfile>:h:h') . '/sound'
let s:soundlist = glob(s:soundpath . '/**.wav')->split("\n")->map('fnamemodify(v:val,":t")[0:-5]')

" play sound
function! mai#sound(name) abort
  let l:soundlist = deepcopy(s:soundlist)
  let l:sound = l:soundlist->filter("v:val==a:name")
  if l:sound == []
    return
  endif
  if has('mac')
    silent! exec '!afplay ' . s:soundpath . '/' . l:sound[0] . '.wav' . ' &'
  elseif exists('*sound_playfile')
    call sound_playfile(s:soundpath . '/' . l:sound[0] . '.wav')
  else
    echo "sound再生環境がありません。"
    return
  endif
  redraw!
endfunction

" show soundlist
function! mai#soundlist() abort
  echo s:soundlist
endfunction
