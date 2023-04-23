# dotfiles

## macOS

`.gitconfig_work`をmacosディレクトリ下に作成

```
[user]
	email = xxx@gmail.com
	name = yyy
```

```zsh
$ cd macos

# zshとgitの設定ファイルをシンボリックリンクで配置
$ zsh init.sh

# homebrewでアプリをインストール
$ zsh install.sh
```

- OSのキーボード設定でgoogle-japanese-imeの使用設定をする

## VSCode

```zsh
$ cd vscode

# 設定ファイルとsnippetsファイルをシンボリックリンクで配置
$ zsh init.sh

# 拡張機能のインストール
$ zsh install.sh
```

- snippetsのシンボリックリンクが`permission denied`になる問題

## iterm2

```zsh
$ cd iterm2

# 設定ファイルをシンボリックリンクで配置
$ zsh init.sh
```

- iterm2の General > Preferences で、iterm2ディレクトリをLoad&Saveするように設定
- iterm2でよしなに設定
