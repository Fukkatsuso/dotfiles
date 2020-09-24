# dotfiles
[![lint](https://github.com/Fukkatsuso/dotfiles/workflows/lint/badge.svg)](https://github.com/Fukkatsuso/dotfiles/actions?query=workflow%3Alint)
[![macOS](https://github.com/Fukkatsuso/dotfiles/workflows/macOS/badge.svg)](https://github.com/Fukkatsuso/dotfiles/actions?query=workflow%3AmacOS)
[![Ubuntu](https://github.com/Fukkatsuso/dotfiles/workflows/Ubuntu/badge.svg)](https://github.com/Fukkatsuso/dotfiles/actions?query=workflow%3AUbuntu)

設定ファイルの管理とアプリのインストール

## ファイル構成
```sh
tree -a -L 2 -I ".git|.gitignore|README.md"
.
├── .bash_profile
├── .bashrc
├── .gitconfig
├── .github
│   └── workflows
├── init.sh
├── iterm2
│   ├── com.googlecode.iterm2.plist
│   ├── iceberg.itermcolors
│   └── init.sh
├── macos
│   ├── brew
│   ├── brew_cask
│   ├── defaults.sh
│   ├── init.sh
│   └── install.sh
├── ubuntu
│   ├── init.sh
│   └── install.sh
└── vscode
    ├── init.sh
    ├── install.sh
    ├── settings.json
    ├── snippets
    └── vscode_extensions
```

## 使い方
## macOS
```sh
cd ~
git clone https://github.com/Fukkatsuso/dotfiles.git
cd dotfiles
bash init.sh
bash macos/init.sh
bash macos/install.sh
```

## Ubuntu
```sh
cd ~
git clone https://github.com/Fukkatsuso/dotfiles.git
cd dotfiles
bash init.sh
bash ubuntu/init.sh
bash ubuntu/install.sh
```

## gitがなくwgetを使う場合
```sh
cd ~
wget https://github.com/Fukkatsuso/dotfiles/archive/master.tar.gz -O dotfiles.tar.gz
tar xzvf dotfiles.tar.gz --remove-files
# 以後任意のスクリプトを実行
```
