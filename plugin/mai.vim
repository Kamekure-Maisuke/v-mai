augroup MAI
  au!
  autocmd CmdUndefined * call mai#support()
  autocmd CmdUndefined * call mai#gag()
  autocmd CmdUndefined * call mai#sleep()
augroup END
