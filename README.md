# v-mai
- maiyanサウンドのvim-plugin

```vim
" call mai#sound('音声')
call mai#sound('support')
call mai#sound('gag')
call mai#sound('sleep')
```

## install
- [vim-plug](https://github.com/junegunn/vim-plug)でインストールする。
- `~/.vimrc`に以下を書く。

```vim
call plug#begin()
Plug 'Kamekure-Maisuke/v-mai'
call plug#end()
```

- 記述後、vimコマンドで`PlugInstall`と打ち、インストールされたら完了。
