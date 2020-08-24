# dotfiles

設定ファイルの管理

## ファイル構成
```sh
tree -a -L 2 -I ".git|.gitignore|.gitmodules"
. 
├── .bash_profile
├── .bashrc
├── .gitconfig
├── .iterm2
│   ├── Iceberg-iTerm2
│   ├── com.googlecode.iterm2.plist
│   └── init.sh
├── .vscode
│   ├── init.sh
│   ├── install.sh
│   ├── settings.json
│   ├── snippets
│   └── vscode_extensions
├── README.md
├── init.sh     # 一番最初に実行
└── install.sh  # インストール
```

## 使い方
```sh
mkdir ~/mydev && cd ~/mydev
git clone https://github.com/Fukkatsuso/dotfiles.git
cd dotfiles
bash init.sh
bash install.sh
```
