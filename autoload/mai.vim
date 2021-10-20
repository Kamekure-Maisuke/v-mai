let s:sound_path = expand('<sfile>:h:h') . '/sound'

function! mai#gag()
  silent! exec '!afplay ' . s:sound_path . '/gag.wav' . ' &'
  redraw!
endfunction

function! mai#sleep()
  silent! exec '!afplay ' . s:sound_path . '/sleep.wav' . ' &'
  redraw!
endfunction

function! mai#support()
  silent! exec '!afplay ' . s:sound_path . '/support.wav' . ' &'
  redraw!
endfunction
