# dotfiles

設定ファイルの管理

## ファイル構成
```sh
tree -a -L 2 -I ".git|.gitignore|README.md"
.
├── .bash_profile
├── .bashrc
├── .gitconfig
├── init.sh
├── install.sh
├── iterm2
│   ├── com.googlecode.iterm2.plist
│   ├── iceberg.itermcolors
│   └── init.sh
└── vscode
    ├── init.sh
    ├── install.sh
    ├── settings.json
    ├── snippets
    └── vscode_extensions
```

## 使い方
```sh
mkdir ~/mydev && cd ~/mydev
git clone https://github.com/Fukkatsuso/dotfiles.git
cd dotfiles
bash init.sh
bash install.sh
```
