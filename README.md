# dotfiles

設定ファイルの管理

## ファイル構成
```sh
tree -a -L 2 -I ".git|.gitignore"
. 
├── .bash_profile
├── .bashrc
├── .gitconfig
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
sh init.sh
sh install.sh
```

<!-- iterm2設定 -->