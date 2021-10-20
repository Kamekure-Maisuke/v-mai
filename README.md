# v-mai
- maiyanサウンドのvim-plugin

```vim
call mai#support()

call mai#gag()

call mai#sleep()
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
