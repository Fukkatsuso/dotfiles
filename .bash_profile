# .bashrc読み込み
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="/usr/local/git/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"

export PROMPT_COMMAND="history -a"

export PS1="\[\e[32m\]\h\[\e[m\]\[\e[37m\]:\[\e[m\]\[\e[34m\]\w\[\e[m\]\[\e[36m\]\`parse_git_branch\`\[\e[m\]\\$ "

# rbenv
if [ -d ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# goenv
if [ -d ~/.goenv ]; then
  export GOENV_ROOT="$HOME/.goenv"
  export PATH="$GOENV_ROOT/bin:$PATH"
  eval "$(goenv init -)"
fi

# gopath
if [ -d ~/mydev/go ]; then
  export GOPATH="$HOME/mydev/go"
  export PATH="$GOPATH/bin:$PATH"
fi

# jenv
if [ -d ~/.jenv ]; then
  export JENV_ROOT="$HOME/.jenv"
  export PATH="$JENV_ROOT/bin:$PATH"
  eval "$(jenv init -)"
fi

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  export PATH="$PYENV_ROOT/shims:$PATH"
  eval "$(pyenv init -)"
fi

if type "pokemon" > /dev/null 2>&1; then
  pokemon
fi
