# v-mai
- maiyanサウンドのvim-plugin

```vim
" 音声タイプ出力
call mai#soundlist()

" call mai#sound('音声タイプ')
call mai#sound('like')
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
