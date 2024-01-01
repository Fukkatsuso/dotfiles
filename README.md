# dotfiles

[![lint](https://github.com/Fukkatsuso/dotfiles/actions/workflows/lint.yml/badge.svg)](https://github.com/Fukkatsuso/dotfiles/actions/workflows/lint.yml)
[![macOS](https://github.com/Fukkatsuso/dotfiles/actions/workflows/macos.yml/badge.svg)](https://github.com/Fukkatsuso/dotfiles/actions/workflows/macos.yml)
[![Ubuntu](https://github.com/Fukkatsuso/dotfiles/actions/workflows/ubuntu.yml/badge.svg)](https://github.com/Fukkatsuso/dotfiles/actions/workflows/ubuntu.yml)

設定ファイルの管理とアプリのインストール

## 使い方

### macOS

```sh
cd ~
git clone https://github.com/Fukkatsuso/dotfiles.git
cd dotfiles

# zshとgitの設定ファイルをシンボリックリンクで配置
zsh macos/init.sh
# homebrewでアプリをインストール
zsh macos/install.sh
```

- OS のキーボード設定で google-japanese-ime の使用設定をする

### Ubuntu

```sh
cd ~
git clone https://github.com/Fukkatsuso/dotfiles.git
cd dotfiles
bash ubuntu/init.sh
bash ubuntu/install.sh
```

### iterm2

```sh
# 設定ファイルをコピーしておく（設定の引き継ぎ）
zsh iterm2/init.sh
```

- iterm2 の General > Preferences で、iterm2 ディレクトリを Load&Save するように設定
- iterm2 を再起動

### VSCode

```sh
# 設定ファイルとsnippetsファイルをシンボリックリンクで配置
zsh vscode/init.sh
# 拡張機能のインストール
zsh vscode/install.sh
```

### git がなく wget を使う場合

```sh
cd ~
wget https://github.com/Fukkatsuso/dotfiles/archive/master.tar.gz -O dotfiles.tar.gz
tar xzvf dotfiles.tar.gz --remove-files
# 以後任意のスクリプトを実行
```
